.class public final Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;",
        "",
        "",
        "a",
        "I",
        "getSplitScreenReceiverHintColor",
        "()I",
        "setSplitScreenReceiverHintColor",
        "(I)V",
        "splitScreenReceiverHintColor",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v2, v0, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSplitScreenReceiverHintColor()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;->a:I

    return p0
.end method

.method public final setSplitScreenReceiverHintColor(I)V
    .locals 0

    sput p1, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;->a:I

    return-void
.end method
