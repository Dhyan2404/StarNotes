.class public final Lorg/apache/poi/hwpf/usermodel/SectionProperties;
.super Lorg/apache/poi/hwpf/model/types/SEPAbstractType;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# instance fields
.field private field_60_rncftn:S

.field private field_61_rncedn:S

.field private field_62_nftn:I

.field private field_63_nfcftnref:I

.field private field_64_nedn:I

.field private field_65_nfcednref:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_63_nfcftnref:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_65_nfcednref:I

    .line 4
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;->field_20_brcTop:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 5
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;->field_21_brcLeft:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 6
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;->field_22_brcBottom:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 7
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/BorderCode;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/BorderCode;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;->field_23_brcRight:Lorg/apache/poi/hwpf/usermodel/BorderCode;

    .line 8
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/DateAndTime;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/DateAndTime;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;->field_26_dttmPropRMark:Lorg/apache/poi/hwpf/usermodel/DateAndTime;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/usermodel/SectionProperties;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/model/types/SEPAbstractType;-><init>(Lorg/apache/poi/hwpf/model/types/SEPAbstractType;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_63_nfcftnref:I

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_65_nfcednref:I

    .line 12
    iget-short v0, p1, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_60_rncftn:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_60_rncftn:S

    .line 13
    iget-short v0, p1, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_61_rncedn:S

    iput-short v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_61_rncedn:S

    .line 14
    iget v0, p1, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_62_nftn:I

    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_62_nftn:I

    .line 15
    iget v0, p1, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_63_nfcftnref:I

    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_63_nfcftnref:I

    .line 16
    iget v0, p1, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_64_nedn:I

    iput v0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_64_nedn:I

    .line 17
    iget p1, p1, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_65_nfcednref:I

    iput p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_65_nfcednref:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->copy()Lorg/apache/poi/hwpf/usermodel/SectionProperties;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hwpf/usermodel/SectionProperties;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwpf/usermodel/SectionProperties;-><init>(Lorg/apache/poi/hwpf/usermodel/SectionProperties;)V

    return-object v0
.end method

.method public getNEdn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_64_nedn:I

    return p0
.end method

.method public getNFtn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_62_nftn:I

    return p0
.end method

.method public getNfcEdnRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_65_nfcednref:I

    return p0
.end method

.method public getNfcFtnRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_63_nfcftnref:I

    return p0
.end method

.method public getRncEdn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_61_rncedn:S

    return p0
.end method

.method public getRncFtn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_60_rncftn:S

    return p0
.end method

.method public setNEdn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_64_nedn:I

    return-void
.end method

.method public setNFtn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_62_nftn:I

    return-void
.end method

.method public setNfcEdnRef(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_65_nfcednref:I

    return-void
.end method

.method public setNfcFtnRef(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_63_nfcftnref:I

    return-void
.end method

.method public setRncEdn(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_61_rncedn:S

    return-void
.end method

.method public setRncFtn(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hwpf/usermodel/SectionProperties;->field_60_rncftn:S

    return-void
.end method
