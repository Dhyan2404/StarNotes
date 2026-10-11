.class public final Lcom/sunia/HTREnginev2/ylo;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/twelvemonkeys/imageio/metadata/Directory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ylo;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ylo;->h:Ljava/lang/String;

    return-object p0
.end method

.method public isReadOnly()Z
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/metadata/AbstractCompoundDirectory;->isReadOnly()Z

    move-result p0

    return p0
.end method
