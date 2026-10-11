.class public abstract Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillBiasBitmap;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillDotBitmap;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillGridBitmap;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillPureBitmap;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;,
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000b\u00086\u0018\u0000 \u00042\u00020\u0001:\t\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000bB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;",
        "",
        "()V",
        "BaseTapeFillShaderBitmapCreator",
        "Companion",
        "CreateTapeFillShaderArgs",
        "TapeFillBiasBitmap",
        "TapeFillDotBitmap",
        "TapeFillGridBitmap",
        "TapeFillPureBitmap",
        "TapeFillShaderBitmapCreator",
        "TapeSvgBitmap",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;->Companion:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;-><init>()V

    return-void
.end method
