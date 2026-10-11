.class public final Lcom/sunia/HTREnginev2/vbl;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;-><init>(Ljava/util/Collection;)V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/vbl;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sunia/HTREnginev2/vbl;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vbl;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sunia/HTREnginev2/vbl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twelvemonkeys/imageio/metadata/xmp/XMP;->DEFAULT_NS_MAPPING:Ljava/util/Map;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/vbl;->g:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vbl;->g:Ljava/lang/String;

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s[%s|%s, "

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "^RDFDescription\\["

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractDirectory;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
