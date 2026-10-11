.class public Lcom/sunia/calculatorv2/ink/recognizer/Recognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;,
        Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Recognizer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeLanguageList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs encodeLanguageList([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "--"

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recognize(Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/b1;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer;->closeExcept(Ljava/util/Set;)V

    return-void
.end method

.method public closeExcept(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getAvailableLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer;->getAvailableLanguages(ZZZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableLanguages(ZZZ)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initDetector()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
