.class public final Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillPureBitmap;
.super Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapeFillPureBitmap"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillPureBitmap;",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->TAPE_FILL_STYLE_PURE_COLOR:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;)V

    return-void
.end method
