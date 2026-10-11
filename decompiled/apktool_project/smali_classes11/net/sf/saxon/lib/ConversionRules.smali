.class public Lnet/sf/saxon/lib/ConversionRules;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lnet/sf/saxon/lib/ConversionRules;

.field public static final synthetic g:Z


# instance fields
.field public a:Lnet/sf/saxon/type/StringToDouble;

.field public b:Lnet/sf/saxon/om/NotationSet;

.field public c:Lnet/sf/saxon/lib/URIChecker;

.field public d:Z

.field public e:Lnet/sf/saxon/type/TypeHierarchy;

.field public final f:Lnet/sf/saxon/expr/sort/LFUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/expr/sort/LFUCache<",
            "Ljava/lang/Integer;",
            "Lnet/sf/saxon/type/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/ConversionRules;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ConversionRules;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/ConversionRules;->DEFAULT:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/sf/saxon/value/StringToDouble11;->getInstance()Lnet/sf/saxon/value/StringToDouble11;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/lib/ConversionRules;->a:Lnet/sf/saxon/type/StringToDouble;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/lib/ConversionRules;->d:Z

    new-instance v1, Lnet/sf/saxon/expr/sort/LFUCache;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/expr/sort/LFUCache;-><init>(IZ)V

    iput-object v1, p0, Lnet/sf/saxon/lib/ConversionRules;->f:Lnet/sf/saxon/expr/sort/LFUCache;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;
    .locals 10

    if-ne p1, p2, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Converter$IdentityConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$IdentityConverter;

    return-object p0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v0

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v2

    const/16 v3, 0x201

    const/16 v4, 0x277

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    if-eq v1, v3, :cond_3d

    if-ne v1, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {p2}, Lnet/sf/saxon/type/AtomicType;->isPrimitiveType()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_7

    invoke-interface {p2}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    if-ne p1, v0, :cond_3

    new-instance p1, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :cond_3
    if-eq v2, v3, :cond_6

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/ConversionRules;->a(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v5

    :cond_5
    new-instance v0, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-direct {v0, p2, p0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    new-instance p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;-><init>(Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/Converter;)V

    return-object p0

    :cond_6
    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/ConversionRules;->makeStringConverter(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p0

    return-object p0

    :cond_7
    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/lib/ConversionRules;->e:Lnet/sf/saxon/type/TypeHierarchy;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Lnet/sf/saxon/type/Converter$UpCastingConverter;

    invoke-direct {p0, p2}, Lnet/sf/saxon/type/Converter$UpCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    return-object p0

    :cond_8
    new-instance v0, Lnet/sf/saxon/type/Converter$UpCastingConverter;

    invoke-interface {p1}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/type/Converter$UpCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    new-instance p1, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    new-instance p0, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;-><init>(Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/Converter;)V

    return-object p0

    :cond_9
    const/16 p1, 0x27b

    const/16 p2, 0x215

    if-eq v0, p2, :cond_3a

    const/16 v1, 0x27a

    const/16 v6, 0x279

    const/16 v7, 0x205

    const/16 v8, 0x209

    const/16 v9, 0x207

    packed-switch v0, :pswitch_data_0

    const/16 v7, 0x206

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown primitive type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eq v2, v3, :cond_b

    if-eq v2, v7, :cond_a

    if-eq v2, v4, :cond_b

    if-eq v2, v6, :cond_a

    return-object v5

    :cond_a
    sget-object p0, Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;->INSTANCE:Lnet/sf/saxon/type/Converter$DurationToDayTimeDuration;

    return-object p0

    :cond_b
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;

    return-object p0

    :pswitch_1
    if-eq v2, v3, :cond_d

    if-eq v2, v7, :cond_c

    if-eq v2, v4, :cond_d

    if-eq v2, v1, :cond_c

    return-object v5

    :cond_c
    sget-object p0, Lnet/sf/saxon/type/Converter$DurationToYearMonthDuration;->INSTANCE:Lnet/sf/saxon/type/Converter$DurationToYearMonthDuration;

    return-object p0

    :cond_d
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/type/Converter$IdentityConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$IdentityConverter;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/type/Converter$ToUntypedAtomicConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$ToUntypedAtomicConverter;

    return-object p0

    :pswitch_4
    if-eq v2, v3, :cond_f

    const/16 p1, 0x212

    if-eq v2, p1, :cond_e

    if-eq v2, v4, :cond_f

    return-object v5

    :cond_e
    sget-object p0, Lnet/sf/saxon/type/Converter$QNameToNotation;->INSTANCE:Lnet/sf/saxon/type/Converter$QNameToNotation;

    return-object p0

    :cond_f
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToNotation;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToNotation;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_5
    if-eq v2, v3, :cond_11

    const/16 p1, 0x213

    if-eq v2, p1, :cond_10

    if-eq v2, v4, :cond_11

    return-object v5

    :cond_10
    sget-object p0, Lnet/sf/saxon/type/Converter$NotationToQName;->INSTANCE:Lnet/sf/saxon/type/Converter$NotationToQName;

    return-object p0

    :cond_11
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToQName;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToQName;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_6
    if-eq v2, v3, :cond_12

    if-eq v2, v4, :cond_12

    return-object v5

    :cond_12
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToAnyURI;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToAnyURI;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_7
    if-eq v2, v3, :cond_14

    const/16 p0, 0x20f

    if-eq v2, p0, :cond_13

    if-eq v2, v4, :cond_14

    return-object v5

    :cond_13
    sget-object p0, Lnet/sf/saxon/type/Converter$HexBinaryToBase64Binary;->INSTANCE:Lnet/sf/saxon/type/Converter$HexBinaryToBase64Binary;

    return-object p0

    :cond_14
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToBase64Binary;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBase64Binary;

    return-object p0

    :pswitch_8
    if-eq v2, v3, :cond_16

    const/16 p0, 0x210

    if-eq v2, p0, :cond_15

    if-eq v2, v4, :cond_16

    return-object v5

    :cond_15
    sget-object p0, Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;->INSTANCE:Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;

    return-object p0

    :cond_16
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToHexBinary;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToHexBinary;

    return-object p0

    :pswitch_9
    if-eq v2, v3, :cond_19

    if-eq v2, v9, :cond_18

    if-eq v2, v8, :cond_17

    if-eq v2, v4, :cond_19

    return-object v5

    :cond_17
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p1, p2, v0, p0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->makeTwoPhaseConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    move-result-object p0

    return-object p0

    :cond_18
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToGMonth;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGMonth;

    return-object p0

    :cond_19
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToGMonth;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonth;

    return-object p0

    :pswitch_a
    if-eq v2, v3, :cond_1c

    if-eq v2, v9, :cond_1b

    if-eq v2, v8, :cond_1a

    if-eq v2, v4, :cond_1c

    return-object v5

    :cond_1a
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p1, p2, v0, p0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->makeTwoPhaseConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    move-result-object p0

    return-object p0

    :cond_1b
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToGDay;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGDay;

    return-object p0

    :cond_1c
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToGDay;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGDay;

    return-object p0

    :pswitch_b
    if-eq v2, v3, :cond_1f

    if-eq v2, v9, :cond_1e

    if-eq v2, v8, :cond_1d

    if-eq v2, v4, :cond_1f

    return-object v5

    :cond_1d
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p1, p2, v0, p0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->makeTwoPhaseConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    move-result-object p0

    return-object p0

    :cond_1e
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToGMonthDay;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGMonthDay;

    return-object p0

    :cond_1f
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;

    return-object p0

    :pswitch_c
    if-eq v2, v3, :cond_22

    if-eq v2, v9, :cond_21

    if-eq v2, v8, :cond_20

    if-eq v2, v4, :cond_22

    return-object v5

    :cond_20
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p1, p2, v0, p0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->makeTwoPhaseConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    move-result-object p0

    return-object p0

    :cond_21
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToGYear;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGYear;

    return-object p0

    :cond_22
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToGYear;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToGYear;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_d
    if-eq v2, v3, :cond_25

    if-eq v2, v9, :cond_24

    if-eq v2, v8, :cond_23

    if-eq v2, v4, :cond_25

    return-object v5

    :cond_23
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p1, p2, v0, p0}, Lnet/sf/saxon/type/Converter$TwoPhaseConverter;->makeTwoPhaseConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/Converter$TwoPhaseConverter;

    move-result-object p0

    return-object p0

    :cond_24
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToGYearMonth;

    return-object p0

    :cond_25
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToGYearMonth;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToGYearMonth;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_e
    if-eq v2, v3, :cond_27

    if-eq v2, v9, :cond_26

    if-eq v2, v4, :cond_27

    return-object v5

    :cond_26
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToDate;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToDate;

    return-object p0

    :cond_27
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToDate;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToDate;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_f
    if-eq v2, v3, :cond_29

    if-eq v2, v9, :cond_28

    if-eq v2, v4, :cond_29

    return-object v5

    :cond_28
    sget-object p0, Lnet/sf/saxon/type/Converter$DateTimeToTime;->INSTANCE:Lnet/sf/saxon/type/Converter$DateTimeToTime;

    return-object p0

    :cond_29
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToTime;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToTime;

    return-object p0

    :pswitch_10
    if-eq v2, v3, :cond_2b

    if-eq v2, v8, :cond_2a

    if-eq v2, v4, :cond_2b

    return-object v5

    :cond_2a
    sget-object p0, Lnet/sf/saxon/type/Converter$DateToDateTime;->INSTANCE:Lnet/sf/saxon/type/Converter$DateToDateTime;

    return-object p0

    :cond_2b
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToDateTime;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToDateTime;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :pswitch_11
    if-eq v2, v3, :cond_2d

    if-eq v2, v4, :cond_2d

    if-eq v2, v6, :cond_2c

    if-eq v2, v1, :cond_2c

    return-object v5

    :cond_2c
    new-instance p0, Lnet/sf/saxon/type/Converter$UpCastingConverter;

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/Converter$UpCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    return-object p0

    :cond_2d
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDuration;

    return-object p0

    :pswitch_12
    if-eq v2, p2, :cond_2f

    if-eq v2, v4, :cond_2e

    if-eq v2, p1, :cond_2f

    packed-switch v2, :pswitch_data_2

    return-object v5

    :pswitch_13
    sget-object p0, Lnet/sf/saxon/type/Converter$BooleanToDouble;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDouble;

    return-object p0

    :cond_2e
    :pswitch_14
    iget-object p0, p0, Lnet/sf/saxon/lib/ConversionRules;->a:Lnet/sf/saxon/type/StringToDouble;

    return-object p0

    :cond_2f
    :pswitch_15
    sget-object p0, Lnet/sf/saxon/type/Converter$NumericToDouble;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToDouble;

    return-object p0

    :pswitch_16
    if-eq v2, v7, :cond_31

    if-eq v2, p2, :cond_31

    if-eq v2, v4, :cond_30

    if-eq v2, p1, :cond_31

    packed-switch v2, :pswitch_data_3

    return-object v5

    :pswitch_17
    sget-object p0, Lnet/sf/saxon/type/Converter$BooleanToFloat;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToFloat;

    return-object p0

    :cond_30
    :pswitch_18
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToFloat;

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/StringConverter$StringToFloat;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p1

    :cond_31
    :pswitch_19
    sget-object p0, Lnet/sf/saxon/type/Converter$NumericToFloat;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToFloat;

    return-object p0

    :pswitch_1a
    if-eq v2, v3, :cond_37

    const/16 p0, 0x202

    if-eq v2, p0, :cond_36

    const/16 p0, 0x204

    if-eq v2, p0, :cond_35

    if-eq v2, v7, :cond_34

    if-eq v2, p2, :cond_33

    if-eq v2, v4, :cond_37

    if-eq v2, p1, :cond_32

    return-object v5

    :cond_32
    sget-object p0, Lnet/sf/saxon/type/Converter$NumericToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToDecimal;

    return-object p0

    :cond_33
    sget-object p0, Lnet/sf/saxon/type/Converter$IntegerToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$IntegerToDecimal;

    return-object p0

    :cond_34
    sget-object p0, Lnet/sf/saxon/type/Converter$DoubleToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$DoubleToDecimal;

    return-object p0

    :cond_35
    sget-object p0, Lnet/sf/saxon/type/Converter$FloatToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$FloatToDecimal;

    return-object p0

    :cond_36
    sget-object p0, Lnet/sf/saxon/type/Converter$BooleanToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDecimal;

    return-object p0

    :cond_37
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToDecimal;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDecimal;

    return-object p0

    :pswitch_1b
    if-eq v2, v3, :cond_39

    if-eq v2, p2, :cond_38

    if-eq v2, v4, :cond_39

    if-eq v2, p1, :cond_38

    packed-switch v2, :pswitch_data_4

    return-object v5

    :cond_38
    :pswitch_1c
    sget-object p0, Lnet/sf/saxon/type/Converter$NumericToBoolean;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToBoolean;

    return-object p0

    :cond_39
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBoolean;

    return-object p0

    :pswitch_1d
    sget-object p0, Lnet/sf/saxon/type/Converter$ToStringConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$ToStringConverter;

    return-object p0

    :cond_3a
    if-eq v2, v4, :cond_3c

    if-eq v2, p1, :cond_3b

    packed-switch v2, :pswitch_data_5

    return-object v5

    :pswitch_1e
    sget-object p0, Lnet/sf/saxon/type/Converter$DoubleToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$DoubleToInteger;

    return-object p0

    :pswitch_1f
    sget-object p0, Lnet/sf/saxon/type/Converter$FloatToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$FloatToInteger;

    return-object p0

    :pswitch_20
    sget-object p0, Lnet/sf/saxon/type/Converter$DecimalToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$DecimalToInteger;

    return-object p0

    :pswitch_21
    sget-object p0, Lnet/sf/saxon/type/Converter$BooleanToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToInteger;

    return-object p0

    :cond_3b
    sget-object p0, Lnet/sf/saxon/type/Converter$NumericToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToInteger;

    return-object p0

    :cond_3c
    :pswitch_22
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToInteger;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToInteger;

    return-object p0

    :cond_3d
    :goto_1
    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/ConversionRules;->makeStringConverter(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_1d
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x277
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x201
        :pswitch_18
        :pswitch_17
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x203
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x201
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public copy()Lnet/sf/saxon/lib/ConversionRules;
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/ConversionRules;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ConversionRules;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ConversionRules;->copyTo(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object v0
.end method

.method public copyTo(Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/lib/ConversionRules;->a:Lnet/sf/saxon/type/StringToDouble;

    iput-object v0, p1, Lnet/sf/saxon/lib/ConversionRules;->a:Lnet/sf/saxon/type/StringToDouble;

    iget-object v0, p0, Lnet/sf/saxon/lib/ConversionRules;->b:Lnet/sf/saxon/om/NotationSet;

    iput-object v0, p1, Lnet/sf/saxon/lib/ConversionRules;->b:Lnet/sf/saxon/om/NotationSet;

    iget-object v0, p0, Lnet/sf/saxon/lib/ConversionRules;->c:Lnet/sf/saxon/lib/URIChecker;

    iput-object v0, p1, Lnet/sf/saxon/lib/ConversionRules;->c:Lnet/sf/saxon/lib/URIChecker;

    iget-boolean v0, p0, Lnet/sf/saxon/lib/ConversionRules;->d:Z

    iput-boolean v0, p1, Lnet/sf/saxon/lib/ConversionRules;->d:Z

    iget-object p0, p0, Lnet/sf/saxon/lib/ConversionRules;->e:Lnet/sf/saxon/type/TypeHierarchy;

    iput-object p0, p1, Lnet/sf/saxon/lib/ConversionRules;->e:Lnet/sf/saxon/type/TypeHierarchy;

    iget-object p0, p1, Lnet/sf/saxon/lib/ConversionRules;->f:Lnet/sf/saxon/expr/sort/LFUCache;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/LFUCache;->clear()V

    return-void
.end method

.method public getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;
    .locals 3

    if-ne p1, p2, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Converter$IdentityConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$IdentityConverter;

    return-object p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p1, v0, :cond_6

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Converter$ToStringConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$ToStringConverter;

    return-object p0

    :cond_2
    if-ne p2, v1, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Converter$ToUntypedAtomicConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$ToUntypedAtomicConverter;

    return-object p0

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    shl-int/lit8 v0, v0, 0x14

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lnet/sf/saxon/lib/ConversionRules;->f:Lnet/sf/saxon/expr/sort/LFUCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/sort/LFUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/Converter;

    if-nez v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ConversionRules;->a(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/lib/ConversionRules;->f:Lnet/sf/saxon/expr/sort/LFUCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/expr/sort/LFUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    :goto_1
    invoke-interface {p2, p0}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p0

    return-object p0
.end method

.method public getStringToDoubleConverter()Lnet/sf/saxon/type/StringToDouble;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ConversionRules;->a:Lnet/sf/saxon/type/StringToDouble;

    return-object p0
.end method

.method public isAllowYearZero()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ConversionRules;->d:Z

    return p0
.end method

.method public isDeclaredNotation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ConversionRules;->b:Lnet/sf/saxon/om/NotationSet;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NotationSet;->isDeclaredNotation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidURI(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ConversionRules;->c:Lnet/sf/saxon/lib/URIChecker;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/URIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public makeStringConverter(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/StringConverter;
    .locals 3

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    invoke-interface {p1}, Lnet/sf/saxon/type/AtomicType;->isBuiltInType()Z

    move-result v1

    const/16 v2, 0x201

    if-eqz v1, :cond_9

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p0

    if-eq p0, v2, :cond_1

    const/16 p1, 0x233

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unknown built-in subtype of xs:string"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_IDREF:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_ID:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_NCNAME:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToName;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToName;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToNMTOKEN;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToNMTOKEN;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToToken;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToToken;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_ENTITY:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToString;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToString;

    return-object p0

    :cond_2
    const/16 v1, 0x277

    if-ne v0, v1, :cond_3

    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToUntypedAtomic;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToUntypedAtomic;

    return-object p0

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/type/AtomicType;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/StringConverter;

    return-object p0

    :cond_4
    const/16 v1, 0x215

    if-ne v0, v1, :cond_5

    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    check-cast p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    return-object p0

    :cond_5
    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v0

    const/16 v1, 0x235

    if-eq v0, v1, :cond_8

    const/16 p0, 0x279

    if-eq v0, p0, :cond_7

    const/16 p0, 0x27a

    if-ne v0, p0, :cond_6

    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown built in type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_7
    sget-object p0, Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;

    return-object p0

    :cond_8
    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToDateTime;

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/StringConverter$StringToDateTime;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    new-instance v1, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-direct {v1, p1, p0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;-><init>(Lnet/sf/saxon/type/StringConverter;Lnet/sf/saxon/type/Converter$DownCastingConverter;)V

    return-object p0

    :cond_9
    if-ne v0, v2, :cond_b

    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_a

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToStringSubtype;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToStringSubtype;-><init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/AtomicType;)V

    return-object v0

    :cond_a
    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToDerivedStringSubtype;-><init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/AtomicType;)V

    return-object v0

    :cond_b
    invoke-interface {p1}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-direct {v1, p1, p0}, Lnet/sf/saxon/type/Converter$DownCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToNonStringDerivedType;-><init>(Lnet/sf/saxon/type/StringConverter;Lnet/sf/saxon/type/Converter$DownCastingConverter;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x229
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllowYearZero(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/ConversionRules;->d:Z

    return-void
.end method

.method public setNotationSet(Lnet/sf/saxon/om/NotationSet;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ConversionRules;->b:Lnet/sf/saxon/om/NotationSet;

    return-void
.end method

.method public setStringToDoubleConverter(Lnet/sf/saxon/type/StringToDouble;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ConversionRules;->a:Lnet/sf/saxon/type/StringToDouble;

    return-void
.end method

.method public setTypeHierarchy(Lnet/sf/saxon/type/TypeHierarchy;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ConversionRules;->e:Lnet/sf/saxon/type/TypeHierarchy;

    return-void
.end method

.method public setURIChecker(Lnet/sf/saxon/lib/URIChecker;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/ConversionRules;->c:Lnet/sf/saxon/lib/URIChecker;

    return-void
.end method
