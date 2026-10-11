.class public Lcom/onyx/engine/sdk/SectionRecognizerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstTocDefaultName:Ljava/lang/String;

.field private numberSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private prefixChapter:Ljava/lang/String;

.field private prefixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private specialPrefixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private suffixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->prefixSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->numberSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->suffixSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->specialPrefixSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getFirstTocDefaultName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->firstTocDefaultName:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberSet()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->numberSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public getPrefixChapter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->prefixChapter:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefixSet()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->prefixSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public getSpecialPrefixSet()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->specialPrefixSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public getSuffixSet()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->suffixSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public setFirstTocDefaultName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->firstTocDefaultName:Ljava/lang/String;

    return-void
.end method

.method public setNumberSet(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->numberSet:Ljava/util/HashSet;

    return-void
.end method

.method public setPrefixChapter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->prefixChapter:Ljava/lang/String;

    return-void
.end method

.method public setPrefixSet(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->prefixSet:Ljava/util/HashSet;

    return-void
.end method

.method public setSpecialPrefixSet(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->specialPrefixSet:Ljava/util/HashSet;

    return-void
.end method

.method public setSuffixSet(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/SectionRecognizerConfig;->suffixSet:Ljava/util/HashSet;

    return-void
.end method
