.class public final Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R*\u0010\u0016\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getEngine",
        "()Ljava/lang/String;",
        "setEngine",
        "(Ljava/lang/String;)V",
        "engine",
        "b",
        "getLang",
        "setLang",
        "lang",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "c",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "uri",
        "<init>",
        "()V",
        "Companion",
        "sdk-ocr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->Companion:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->d:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "google-ml-kit"

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->a:Ljava/lang/String;

    const-string v0, "zh"

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->b:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->c:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->d:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-object v0
.end method


# virtual methods
.method public final getEngine()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public final setEngine(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->a:Ljava/lang/String;

    return-void
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->b:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->c:Landroid/net/Uri;

    return-void
.end method
