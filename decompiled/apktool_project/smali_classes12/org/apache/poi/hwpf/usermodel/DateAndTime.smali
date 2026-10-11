.class public final Lorg/apache/poi/hwpf/usermodel/DateAndTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SIZE:I = 0x4

.field private static final _dom:Lorg/apache/poi/util/BitField;

.field private static final _hours:Lorg/apache/poi/util/BitField;

.field private static final _minutes:Lorg/apache/poi/util/BitField;

.field private static final _months:Lorg/apache/poi/util/BitField;

.field private static final _years:Lorg/apache/poi/util/BitField;


# instance fields
.field private _info:S

.field private _info2:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_minutes:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x7c0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_hours:Lorg/apache/poi/util/BitField;

    const v0, 0xf800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_dom:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_months:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1ff0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_years:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/usermodel/DateAndTime;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    .line 4
    iget-short p1, p1, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    iput-short p1, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    add-int/lit8 p2, p2, 0x2

    .line 7
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->copy()Lorg/apache/poi/hwpf/usermodel/DateAndTime;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/usermodel/DateAndTime;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/usermodel/DateAndTime;-><init>(Lorg/apache/poi/hwpf/usermodel/DateAndTime;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/hwpf/usermodel/DateAndTime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hwpf/usermodel/DateAndTime;

    iget-short v0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    iget-short v2, p1, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    if-ne v0, v2, :cond_1

    iget-short p0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    iget-short p1, p1, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 7

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_years:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    add-int/lit16 v1, v0, 0x76c

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_months:Lorg/apache/poi/util/BitField;

    iget-short v2, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_dom:Lorg/apache/poi/util/BitField;

    iget-short v3, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v3

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_hours:Lorg/apache/poi/util/BitField;

    iget-short v4, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    invoke-virtual {v0, v4}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v4

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_minutes:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(IIIIII)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    if-nez v0, :cond_0

    iget-short p0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize([BI)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info:S

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 p2, p2, 0x2

    iget-short p0, p0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->_info2:S

    invoke-static {p1, p2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[DTTM] EMPTY"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DTTM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/DateAndTime;->getDate()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
