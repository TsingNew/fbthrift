<?hh // strict
/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

/**
 * Original thrift enum:-
 * FooEnum
 */
enum FooEnum : int {
  BAR = 0;
  BAZ = 1;
}
type FooEnumType = FooEnum;

/**
 * Original thrift struct:-
 * BarStruct
 */
class BarStruct implements \IThriftStruct, \IThriftShapishStruct {
  use \ThriftSerializationTrait;

  public static darray<int, darray<string, mixed>> $_TSPEC = darray[
    1 => darray[
      'var' => 'e',
      'type' => \TType::MAP,
      'ktype' => \TType::I32,
      'vtype' => \TType::I32,
      'key' => darray[
        'type' => \TType::I32,
        'enum' => 'FooEnum',
      ],
      'val' => darray[
        'type' => \TType::I32,
        'enum' => 'FooEnum',
        ],
        'format' => 'collection',
      ],
    2 => darray[
      'var' => 's',
      'type' => \TType::SET,
      'etype' => \TType::I32,
      'elem' => darray[
        'type' => \TType::I32,
        'enum' => 'FooEnum',
        ],
        'format' => 'collection',
      ],
    ];
  public static Map<string, int> $_TFIELDMAP = Map {
    'e' => 1,
    's' => 2,
  };
  const type TShape = shape(
    'e' => darray<FooEnum, FooEnum>,
    's' => darray<FooEnum, bool>,
    ...
  );
  const int STRUCTURAL_ID = 2986314503120154076;
  /**
   * Original thrift field:-
   * 1: map<enum module.FooEnum, enum module.FooEnum> e
   */
  public Map<FooEnum, FooEnum> $e;
  /**
   * Original thrift field:-
   * 2: set<enum module.FooEnum> s
   */
  public Set<FooEnum> $s;

  public function __construct(?Map<FooEnum, FooEnum> $e = null, ?Set<FooEnum> $s = null  ) {
    if ($e === null) {
      $this->e = Map {};
    } else {
      $this->e = $e;
    }
    if ($s === null) {
      $this->s = Set {};
    } else {
      $this->s = $s;
    }
  }

  public function getName(): string {
    return 'BarStruct';
  }

  public static function __jsonArrayToShape(
    darray<arraykey, mixed> $json_data,
  ): ?self::TShape {
    $shape_data = $json_data;

    if (!C\contains_key($shape_data, 'e')) {
      $shape_data['e'] = Map {};
    }
    if (!is_array($shape_data['e'])) {
      return null;
    }
    foreach (/* HH_IGNORE_ERROR[4110] */$shape_data['e'] as $key0 => $value1) {
      if (!is_int($key0)) {
        return null;
      }
      if (!is_int($value1)) {
        return null;
      }
      /* HH_IGNORE_ERROR[4005] */
      /* HH_IGNORE_ERROR[4063] */
      $shape_data['e'][$key0] = $value1;
    }

    if (!C\contains_key($shape_data, 's')) {
      $shape_data['s'] = Set {};
    }
    if (!is_array($shape_data['s'])) {
      return null;
    }
    $the_set4 = darray[];
    foreach (/* HH_IGNORE_ERROR[4110] */ $shape_data['s'] as $key2 => $shape_data3) {
      if (!is_int($shape_data3)) {
        return null;
      }
      $the_set4[$shape_data3] = true;
    }
    $shape_data['s'] = $the_set4;

    return /* HH_IGNORE_ERROR[4110] */ $shape_data;
  }

  public static function __fromShape(self::TShape $shape): this {
    $me = /* HH_IGNORE_ERROR[4060] */ new static();
    $me->e = (new Map($shape['e']));
    $me->s = new Set(Keyset\keys($shape['s']));
    return $me;
  }

  public function __toShape(): self::TShape {
    return shape(
      'e' => $this->e->toDArray(),
      's' => darray(Dict\fill_keys($this->s->toValuesArray(), true)),
    );
  }
}

