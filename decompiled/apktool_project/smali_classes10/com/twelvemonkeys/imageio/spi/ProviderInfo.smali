.class public Lcom/twelvemonkeys/imageio/spi/ProviderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Package;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "package"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->a(Ljava/lang/Package;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->b(Ljava/lang/Package;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Package;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.twelvemonkeys"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TwelveMonkeys"

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Package;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.twelvemonkeys"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DEV"

    goto :goto_0

    :cond_0
    const-string p0, "Unspecified"

    :goto_0
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getVendorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
