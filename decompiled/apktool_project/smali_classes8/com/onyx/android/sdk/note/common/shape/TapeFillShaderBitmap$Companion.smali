.class public final Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;",
        "",
        "()V",
        "createFrom",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;",
        "args",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillBiasBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillBiasBitmap;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillDotBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillDotBitmap;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillGridBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillGridBitmap;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillPureBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillPureBitmap;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillBiasBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillBiasBitmap;-><init>()V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
