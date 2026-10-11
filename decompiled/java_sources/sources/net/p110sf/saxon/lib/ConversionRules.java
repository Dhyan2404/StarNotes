package net.p110sf.saxon.lib;

import net.p110sf.saxon.expr.sort.LFUCache;
import net.p110sf.saxon.om.NotationSet;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.StringToDouble11;

/* loaded from: classes11.dex */
public class ConversionRules {
    public static final ConversionRules DEFAULT = new ConversionRules();

    /* renamed from: g */
    public static final /* synthetic */ boolean f100487g = false;

    /* renamed from: b */
    public NotationSet f100489b;

    /* renamed from: c */
    public URIChecker f100490c;

    /* renamed from: e */
    public TypeHierarchy f100492e;

    /* renamed from: a */
    public StringToDouble f100488a = StringToDouble11.getInstance();

    /* renamed from: d */
    public boolean f100491d = true;

    /* renamed from: f */
    public final LFUCache<Integer, Converter> f100493f = new LFUCache<>(100, true);

    /* renamed from: a */
    public final Converter m63255a(AtomicType atomicType, AtomicType atomicType2) {
        if (atomicType == atomicType2) {
            return Converter.IdentityConverter.INSTANCE;
        }
        int fingerprint = atomicType2.getFingerprint();
        int primitiveType = atomicType2.getPrimitiveType();
        int primitiveType2 = atomicType.getPrimitiveType();
        if ((primitiveType2 == 513 || primitiveType2 == 631) && (primitiveType == 513 || primitiveType == 631)) {
            return makeStringConverter(atomicType2);
        }
        if (!atomicType2.isPrimitiveType()) {
            AtomicType primitiveItemType = atomicType2.getPrimitiveItemType();
            if (atomicType == primitiveItemType) {
                return new Converter.DownCastingConverter(atomicType2, this);
            }
            if (primitiveType2 == 513 || primitiveType2 == 631) {
                return makeStringConverter(atomicType2);
            }
            Converter m63255a = m63255a(atomicType, primitiveItemType);
            if (m63255a == null) {
                return null;
            }
            return new Converter.TwoPhaseConverter(m63255a, new Converter.DownCastingConverter(atomicType2, this));
        }
        if (primitiveType2 == fingerprint) {
            TypeHierarchy typeHierarchy = this.f100492e;
            return (typeHierarchy == null || !typeHierarchy.isSubType(atomicType, atomicType2)) ? new Converter.TwoPhaseConverter(new Converter.UpCastingConverter(atomicType.getPrimitiveItemType()), new Converter.DownCastingConverter(atomicType2, this)) : new Converter.UpCastingConverter(atomicType2);
        }
        if (fingerprint == 533) {
            if (primitiveType2 != 631) {
                if (primitiveType2 == 635) {
                    return Converter.NumericToInteger.INSTANCE;
                }
                switch (primitiveType2) {
                    case 513:
                        break;
                    case 514:
                        return Converter.BooleanToInteger.INSTANCE;
                    case 515:
                        return Converter.DecimalToInteger.INSTANCE;
                    case 516:
                        return Converter.FloatToInteger.INSTANCE;
                    case 517:
                        return Converter.DoubleToInteger.INSTANCE;
                    default:
                        return null;
                }
            }
            return StringConverter.StringToInteger.INSTANCE;
        }
        switch (fingerprint) {
            case 513:
                return Converter.ToStringConverter.INSTANCE;
            case 514:
                if (primitiveType2 != 513) {
                    if (primitiveType2 != 533) {
                        if (primitiveType2 != 631) {
                            if (primitiveType2 != 635) {
                                switch (primitiveType2) {
                                    case 515:
                                    case 516:
                                    case 517:
                                        break;
                                    default:
                                        return null;
                                }
                            }
                        }
                    }
                    return Converter.NumericToBoolean.INSTANCE;
                }
                return StringConverter.StringToBoolean.INSTANCE;
            case 515:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 514) {
                        return Converter.BooleanToDecimal.INSTANCE;
                    }
                    if (primitiveType2 == 516) {
                        return Converter.FloatToDecimal.INSTANCE;
                    }
                    if (primitiveType2 == 517) {
                        return Converter.DoubleToDecimal.INSTANCE;
                    }
                    if (primitiveType2 == 533) {
                        return Converter.IntegerToDecimal.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        if (primitiveType2 != 635) {
                            return null;
                        }
                        return Converter.NumericToDecimal.INSTANCE;
                    }
                }
                return StringConverter.StringToDecimal.INSTANCE;
            case 516:
                if (primitiveType2 != 517 && primitiveType2 != 533) {
                    if (primitiveType2 != 631) {
                        if (primitiveType2 != 635) {
                            switch (primitiveType2) {
                                case 513:
                                    break;
                                case 514:
                                    return Converter.BooleanToFloat.INSTANCE;
                                case 515:
                                    break;
                                default:
                                    return null;
                            }
                        }
                    }
                    return new StringConverter.StringToFloat(this);
                }
                return Converter.NumericToFloat.INSTANCE;
            case 517:
                break;
            case 518:
                if (primitiveType2 == 513 || primitiveType2 == 631) {
                    return StringConverter.StringToDuration.INSTANCE;
                }
                if (primitiveType2 == 633 || primitiveType2 == 634) {
                    return new Converter.UpCastingConverter(BuiltInAtomicType.DURATION);
                }
                return null;
            case 519:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 521) {
                        return Converter.DateToDateTime.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return new StringConverter.StringToDateTime(this);
            case 520:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToTime.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return StringConverter.StringToTime.INSTANCE;
            case 521:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToDate.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return new StringConverter.StringToDate(this);
            case 522:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToGYearMonth.INSTANCE;
                    }
                    if (primitiveType2 == 521) {
                        return Converter.TwoPhaseConverter.makeTwoPhaseConverter(BuiltInAtomicType.DATE, BuiltInAtomicType.DATE_TIME, BuiltInAtomicType.G_YEAR_MONTH, this);
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return new StringConverter.StringToGYearMonth(this);
            case StandardNames.XS_G_YEAR /* 523 */:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToGYear.INSTANCE;
                    }
                    if (primitiveType2 == 521) {
                        return Converter.TwoPhaseConverter.makeTwoPhaseConverter(BuiltInAtomicType.DATE, BuiltInAtomicType.DATE_TIME, BuiltInAtomicType.G_YEAR, this);
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return new StringConverter.StringToGYear(this);
            case 524:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToGMonthDay.INSTANCE;
                    }
                    if (primitiveType2 == 521) {
                        return Converter.TwoPhaseConverter.makeTwoPhaseConverter(BuiltInAtomicType.DATE, BuiltInAtomicType.DATE_TIME, BuiltInAtomicType.G_MONTH_DAY, this);
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return StringConverter.StringToGMonthDay.INSTANCE;
            case StandardNames.XS_G_DAY /* 525 */:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToGDay.INSTANCE;
                    }
                    if (primitiveType2 == 521) {
                        return Converter.TwoPhaseConverter.makeTwoPhaseConverter(BuiltInAtomicType.DATE, BuiltInAtomicType.DATE_TIME, BuiltInAtomicType.G_DAY, this);
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return StringConverter.StringToGDay.INSTANCE;
            case StandardNames.XS_G_MONTH /* 526 */:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 519) {
                        return Converter.DateTimeToGMonth.INSTANCE;
                    }
                    if (primitiveType2 == 521) {
                        return Converter.TwoPhaseConverter.makeTwoPhaseConverter(BuiltInAtomicType.DATE, BuiltInAtomicType.DATE_TIME, BuiltInAtomicType.G_MONTH, this);
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return StringConverter.StringToGMonth.INSTANCE;
            case 527:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 528) {
                        return Converter.Base64BinaryToHexBinary.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return StringConverter.StringToHexBinary.INSTANCE;
            case StandardNames.XS_BASE64_BINARY /* 528 */:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 527) {
                        return Converter.HexBinaryToBase64Binary.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return StringConverter.StringToBase64Binary.INSTANCE;
            case 529:
                if (primitiveType2 == 513 || primitiveType2 == 631) {
                    return new StringConverter.StringToAnyURI(this);
                }
                return null;
            case 530:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 531) {
                        return Converter.NotationToQName.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return new StringConverter.StringToQName(this);
            case 531:
                if (primitiveType2 != 513) {
                    if (primitiveType2 == 530) {
                        return Converter.QNameToNotation.INSTANCE;
                    }
                    if (primitiveType2 != 631) {
                        return null;
                    }
                }
                return new StringConverter.StringToNotation(this);
            default:
                switch (fingerprint) {
                    case StandardNames.XS_UNTYPED_ATOMIC /* 631 */:
                        return Converter.ToUntypedAtomicConverter.INSTANCE;
                    case 632:
                        return Converter.IdentityConverter.INSTANCE;
                    case StandardNames.XS_YEAR_MONTH_DURATION /* 633 */:
                        if (primitiveType2 != 513) {
                            if (primitiveType2 != 518) {
                                if (primitiveType2 != 631) {
                                    if (primitiveType2 != 634) {
                                        return null;
                                    }
                                }
                            }
                            return Converter.DurationToYearMonthDuration.INSTANCE;
                        }
                        return StringConverter.StringToYearMonthDuration.INSTANCE;
                    case 634:
                        if (primitiveType2 != 513) {
                            if (primitiveType2 != 518) {
                                if (primitiveType2 != 631) {
                                    if (primitiveType2 != 633) {
                                        return null;
                                    }
                                }
                            }
                            return Converter.DurationToDayTimeDuration.INSTANCE;
                        }
                        return StringConverter.StringToDayTimeDuration.INSTANCE;
                    case 635:
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown primitive type " + fingerprint);
                }
        }
        if (primitiveType2 != 533) {
            if (primitiveType2 != 631) {
                if (primitiveType2 != 635) {
                    switch (primitiveType2) {
                        case 513:
                            break;
                        case 514:
                            return Converter.BooleanToDouble.INSTANCE;
                        case 515:
                        case 516:
                            break;
                        default:
                            return null;
                    }
                }
            }
            return this.f100488a;
        }
        return Converter.NumericToDouble.INSTANCE;
    }

    public ConversionRules copy() {
        ConversionRules conversionRules = new ConversionRules();
        copyTo(conversionRules);
        return conversionRules;
    }

    public void copyTo(ConversionRules conversionRules) {
        conversionRules.f100488a = this.f100488a;
        conversionRules.f100489b = this.f100489b;
        conversionRules.f100490c = this.f100490c;
        conversionRules.f100491d = this.f100491d;
        conversionRules.f100492e = this.f100492e;
        conversionRules.f100493f.clear();
    }

    public Converter getConverter(AtomicType atomicType, AtomicType atomicType2) {
        BuiltInAtomicType builtInAtomicType;
        if (atomicType == atomicType2) {
            return Converter.IdentityConverter.INSTANCE;
        }
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        if (atomicType == builtInAtomicType2 || atomicType == (builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC)) {
            return atomicType2.getStringConverter(this);
        }
        if (atomicType2 == builtInAtomicType2) {
            return Converter.ToStringConverter.INSTANCE;
        }
        if (atomicType2 == builtInAtomicType) {
            return Converter.ToUntypedAtomicConverter.INSTANCE;
        }
        int primitiveType = (atomicType.getPrimitiveType() << 20) | atomicType2.getFingerprint();
        Converter converter = this.f100493f.get(Integer.valueOf(primitiveType));
        if (converter == null) {
            converter = m63255a(atomicType, atomicType2);
            if (converter == null) {
                return null;
            }
            this.f100493f.put(Integer.valueOf(primitiveType), converter);
        }
        return converter;
    }

    public StringToDouble getStringToDoubleConverter() {
        return this.f100488a;
    }

    public boolean isAllowYearZero() {
        return this.f100491d;
    }

    public boolean isDeclaredNotation(String str, String str2) {
        NotationSet notationSet = this.f100489b;
        if (notationSet == null) {
            return true;
        }
        return notationSet.isDeclaredNotation(str, str2);
    }

    public boolean isValidURI(String str) {
        URIChecker uRIChecker = this.f100490c;
        return uRIChecker == null || uRIChecker.isValidURI(str);
    }

    public StringConverter makeStringConverter(AtomicType atomicType) {
        int primitiveType = atomicType.getPrimitiveType();
        if (!atomicType.isBuiltInType()) {
            return primitiveType == 513 ? atomicType.getBuiltInBaseType() == BuiltInAtomicType.STRING ? new StringConverter.StringToStringSubtype(this, atomicType) : new StringConverter.StringToDerivedStringSubtype(this, atomicType) : new StringConverter.StringToNonStringDerivedType(atomicType.getPrimitiveItemType().getStringConverter(this), new Converter.DownCastingConverter(atomicType, this));
        }
        if (primitiveType == 513) {
            int fingerprint = atomicType.getFingerprint();
            if (fingerprint == 513) {
                return StringConverter.StringToString.INSTANCE;
            }
            if (fingerprint == 563) {
                return StringConverter.StringToNCName.TO_ENTITY;
            }
            switch (fingerprint) {
                case StandardNames.XS_NORMALIZED_STRING /* 553 */:
                    return StringConverter.StringToNormalizedString.INSTANCE;
                case 554:
                    return StringConverter.StringToToken.INSTANCE;
                case StandardNames.XS_LANGUAGE /* 555 */:
                    return StringConverter.StringToLanguage.INSTANCE;
                case StandardNames.XS_NMTOKEN /* 556 */:
                    return StringConverter.StringToNMTOKEN.INSTANCE;
                default:
                    switch (fingerprint) {
                        case StandardNames.XS_NAME /* 558 */:
                            return StringConverter.StringToName.INSTANCE;
                        case 559:
                            return StringConverter.StringToNCName.TO_NCNAME;
                        case StandardNames.XS_ID /* 560 */:
                            return StringConverter.StringToNCName.TO_ID;
                        case StandardNames.XS_IDREF /* 561 */:
                            return StringConverter.StringToNCName.TO_IDREF;
                        default:
                            throw new AssertionError("Unknown built-in subtype of xs:string");
                    }
            }
        }
        if (primitiveType == 631) {
            return StringConverter.StringToUntypedAtomic.INSTANCE;
        }
        if (atomicType.isPrimitiveType()) {
            return (StringConverter) getConverter(BuiltInAtomicType.STRING, atomicType);
        }
        if (primitiveType == 533) {
            return new StringConverter.StringToIntegerSubtype((BuiltInAtomicType) atomicType);
        }
        int fingerprint2 = atomicType.getFingerprint();
        if (fingerprint2 == 565) {
            return new StringConverter.StringToNonStringDerivedType(new StringConverter.StringToDateTime(this), new Converter.DownCastingConverter(atomicType, this));
        }
        if (fingerprint2 == 633) {
            return StringConverter.StringToYearMonthDuration.INSTANCE;
        }
        if (fingerprint2 == 634) {
            return StringConverter.StringToDayTimeDuration.INSTANCE;
        }
        throw new AssertionError("Unknown built in type " + atomicType);
    }

    public void setAllowYearZero(boolean z) {
        this.f100491d = z;
    }

    public void setNotationSet(NotationSet notationSet) {
        this.f100489b = notationSet;
    }

    public void setStringToDoubleConverter(StringToDouble stringToDouble) {
        this.f100488a = stringToDouble;
    }

    public void setTypeHierarchy(TypeHierarchy typeHierarchy) {
        this.f100492e = typeHierarchy;
    }

    public void setURIChecker(URIChecker uRIChecker) {
        this.f100490c = uRIChecker;
    }
}
