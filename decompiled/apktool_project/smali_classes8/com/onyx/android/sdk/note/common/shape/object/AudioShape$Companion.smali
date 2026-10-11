.class public final Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;",
        "",
        "()V",
        "AUDIO_SHAPE_TEXT_MAX_WIDTH",
        "",
        "getAUDIO_SHAPE_TEXT_MAX_WIDTH",
        "()I",
        "setAUDIO_SHAPE_TEXT_MAX_WIDTH",
        "(I)V",
        "AUDIO_SHAPE_TEXT_SIZE",
        "getAUDIO_SHAPE_TEXT_SIZE",
        "setAUDIO_SHAPE_TEXT_SIZE",
        "textPaint",
        "Landroid/text/TextPaint;",
        "getTextPaint",
        "()Landroid/text/TextPaint;",
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
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAUDIO_SHAPE_TEXT_MAX_WIDTH()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->access$getAUDIO_SHAPE_TEXT_MAX_WIDTH$cp()I

    move-result p0

    return p0
.end method

.method public final getAUDIO_SHAPE_TEXT_SIZE()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->access$getAUDIO_SHAPE_TEXT_SIZE$cp()I

    move-result p0

    return p0
.end method

.method public final getTextPaint()Landroid/text/TextPaint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->access$getTextPaint$cp()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method public final setAUDIO_SHAPE_TEXT_MAX_WIDTH(I)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->access$setAUDIO_SHAPE_TEXT_MAX_WIDTH$cp(I)V

    return-void
.end method

.method public final setAUDIO_SHAPE_TEXT_SIZE(I)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->access$setAUDIO_SHAPE_TEXT_SIZE$cp(I)V

    return-void
.end method
