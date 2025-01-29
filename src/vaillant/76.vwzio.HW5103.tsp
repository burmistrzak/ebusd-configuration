import "@ebusd/ebus-typespec";
import "./_templates.tsp";
using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;
namespace Vaillant;

// @zz(0x76)
namespace Vwzio.Hw5103 {
  // B509
  /** default *r */
  @base(MF, 0x9, 0x54, 0x2, 0)
  model r_0 {
    @maxLength(4)
    value: IGN;
  }

  @inherit(r_0)
  @ext(0x6, 0x9)
  model DiagFlowTemp {
    value: tempv;
  }

  @inherit(r_0)
  @ext(0x74, 0x9)
  model DiagSystemPressure {
    value: pressv;
  }

  @inherit(r_0)
  @ext(0xb6, 0x8)
  model DiagCondensorOutletTemp {
    value: tempv;
  }

  @inherit(r_0)
  @ext(0xb8, 0xb)
  model DiagVwzHours {
    value: hoursum2;
  }

/**
  @inherit(r_0)
  @ext(0xb9, 0xb)
  model DiagHcHours {
    value: hoursum2;
  }
*/

  @inherit(r_0)
  @ext(0xbd, 0xb)
  model DiagImmersionHeaterHours {
    value: hoursum2;
  }

  @inherit(r_0)
  @ext(0xc0, 0xb)
  model DiagImmersionHeaterStarts {
    value: cntstarts2;
  }

  @inherit(r_0)
  @ext(0xc1, 0xb)
  model DiagPrioritySwitchingValveOps {
    value: cntstarts2;
  }

  // B511
  /** default *r */
  @base(MF, 0x11)
  model r_1 {}

  // B516
  /** default *r */
  @base(MF, 0x16)
  model r_2 {
    @maxLength(1)
    value: IGN;
  }

  @inherit(r_2)
  @ext(0x14)
  model VwzPowerConsumption {
    @unit("W")
    value: EXP;
  }

  // B51A FF32xx
  /** default *r */
  @base(MF, 0x1a, 0x5, 0xff, 0x32)
  model r_3 {
    @maxLength(3)
    value: IGN;
  }

/**
  @inherit(r_3)
  @ext(0x40)
  model TotalRunningHours {
    value: hoursum2;
  }
*/

  @inherit(r_3)
  @ext(0x46)
  model ImmersionHeaterHours {
    value: hoursum2;
  }

  @inherit(r_3)
  @ext(0x49)
  model ImmersionHeaterEnergyUsage {
    @unit("kWh")
    value: energy;
  }

  @inherit(r_3)
  @ext(0x4a)
  model ImmersionHeaterStarts {
    value: cntstarts2;
  }

  @inherit(r_3)
  @ext(0x4b)
  model PrioritySwitchingValveOps {
    value: cntstarts2;
  }

  @inherit(r_3)
  @ext(0x4c)
  model ImmersionHeaterPower {
    @unit("kW")
    @divisor(10)
    value: D1B;
  }

  @inherit(r_3)
  @ext(0x5c)
  model ImmersionHeaterTemp {
    @divisor(10)
    value: temps2;
  }

  // B51A FF34xx
  /** default *r */
  @base(MF, 0x1a, 0x5, 0xff, 0x34)
  model r_4 {
    @maxLength(3)
    value: IGN;
  }

  /** default *w */
  @base(MF, 0x1a, 0x6, 0xff, 0x34)
  model w_4 {}

  @inherit(r_4, w_4)
  @ext(0x5c)
  model HwcMode {
    value: hwcmode3;
  }

}
