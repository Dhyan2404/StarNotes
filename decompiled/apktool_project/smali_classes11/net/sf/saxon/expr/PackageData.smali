.class public Lnet/sf/saxon/expr/PackageData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/s9api/HostLanguage;

.field public b:Z

.field public c:Lnet/sf/saxon/trans/DecimalFormatManager;

.field protected config:Lnet/sf/saxon/Configuration;

.field public d:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public g:I

.field public h:Ljava/lang/String;

.field protected hostLanguageVersion:I

.field public i:Z

.field public j:Lnet/sf/saxon/trans/TypeAliasManager;

.field protected keyManager:Lnet/sf/saxon/trans/KeyManager;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->c:Lnet/sf/saxon/trans/DecimalFormatManager;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->keyManager:Lnet/sf/saxon/trans/KeyManager;

    .line 4
    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->d:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->e:Ljava/util/List;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lnet/sf/saxon/expr/PackageData;->g:I

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->f:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->c:Lnet/sf/saxon/trans/DecimalFormatManager;

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->keyManager:Lnet/sf/saxon/trans/KeyManager;

    .line 14
    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->d:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->e:Ljava/util/List;

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lnet/sf/saxon/expr/PackageData;->g:I

    return-void
.end method


# virtual methods
.method public addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->d:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/PackageData;->c:Lnet/sf/saxon/trans/DecimalFormatManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/DecimalFormatManager;

    iget-object v1, p0, Lnet/sf/saxon/expr/PackageData;->a:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalFormatManager;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->c:Lnet/sf/saxon/trans/DecimalFormatManager;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->c:Lnet/sf/saxon/trans/DecimalFormatManager;

    return-object p0
.end method

.method public getGlobalSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->f:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getGlobalVariableList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->e:Ljava/util/List;

    return-object p0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->a:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getHostLanguageVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/PackageData;->hostLanguageVersion:I

    return p0
.end method

.method public getKeyManager()Lnet/sf/saxon/trans/KeyManager;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/PackageData;->keyManager:Lnet/sf/saxon/trans/KeyManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/KeyManager;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/KeyManager;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/PackageData;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->keyManager:Lnet/sf/saxon/trans/KeyManager;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->keyManager:Lnet/sf/saxon/trans/KeyManager;

    return-object p0
.end method

.method public getLocalLicenseId()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/PackageData;->g:I

    return p0
.end method

.method public getTargetEdition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->h:Ljava/lang/String;

    return-object p0
.end method

.method public isRelocatable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/PackageData;->i:Z

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/PackageData;->b:Z

    return p0
.end method

.method public isXSLT()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->a:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public obtainTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/PackageData;->j:Lnet/sf/saxon/trans/TypeAliasManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/PackageData;->j:Lnet/sf/saxon/trans/TypeAliasManager;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/PackageData;->j:Lnet/sf/saxon/trans/TypeAliasManager;

    return-object p0
.end method

.method public setAccumulatorRegistry(Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->d:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->config:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->c:Lnet/sf/saxon/trans/DecimalFormatManager;

    return-void
.end method

.method public setGlobalSlotManager(Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->f:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->a:Lnet/sf/saxon/s9api/HostLanguage;

    iput p2, p0, Lnet/sf/saxon/expr/PackageData;->hostLanguageVersion:I

    return-void
.end method

.method public setKeyManager(Lnet/sf/saxon/trans/KeyManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->keyManager:Lnet/sf/saxon/trans/KeyManager;

    return-void
.end method

.method public setLocalLicenseId(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/PackageData;->g:I

    return-void
.end method

.method public setRelocatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/PackageData;->i:Z

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/PackageData;->b:Z

    return-void
.end method

.method public setTargetEdition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->h:Ljava/lang/String;

    return-void
.end method

.method public setTypeAliasManager(Lnet/sf/saxon/trans/TypeAliasManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/PackageData;->j:Lnet/sf/saxon/trans/TypeAliasManager;

    return-void
.end method
