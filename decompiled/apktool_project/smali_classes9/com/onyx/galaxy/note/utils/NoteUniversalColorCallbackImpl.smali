.class public final Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;",
        "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;",
        "()V",
        "getBgOverlayColor",
        "",
        "getHighlightColor",
        "getThemeBackgroundColor",
        "getThemePrimaryColor",
        "note_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgOverlayColor()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_bg_overlay_color_01:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    return p0
.end method

.method public getHighlightColor()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_02:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    return p0
.end method

.method public getThemeBackgroundColor()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_04:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    return p0
.end method

.method public getThemePrimaryColor()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemePrimaryColor()I

    move-result p0

    return p0
.end method
