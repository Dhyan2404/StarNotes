.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;,
        Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteCommonSettingsLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteCommonSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,390:1\n298#2,2:391\n*S KotlinDebug\n*F\n+ 1 NoteCommonSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout\n*L\n303#1:391,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001NB\u0011\u0008\u0016\u0012\u0006\u0010F\u001a\u00020E\u00a2\u0006\u0004\u0008G\u0010HB\u001d\u0008\u0016\u0012\u0006\u0010F\u001a\u00020E\u0012\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010I\u00a2\u0006\u0004\u0008G\u0010KB%\u0008\u0016\u0012\u0006\u0010F\u001a\u00020E\u0012\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010I\u0012\u0006\u0010L\u001a\u00020\u000f\u00a2\u0006\u0004\u0008G\u0010MJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J \u0010\r\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\nH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u001d\u001a\u00020\u0002H\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J#\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010$H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0008\u0010(\u001a\u00020\u0002H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020$H\u0002J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010-\u001a\u00020$H\u0002J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u00102\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u00101\u001a\u00020$H\u0002J\u000e\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u000203J\u0010\u00108\u001a\u00020\u00022\u0008\u00107\u001a\u0004\u0018\u000106R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010D\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "Y",
        "s",
        "W",
        "S",
        "L",
        "Landroid/view/View;",
        "view",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "currentDockType",
        "targetDockType",
        "C",
        "Q",
        "",
        "layoutType",
        "w",
        "z",
        "U",
        "gravity",
        "setPageScrollerGravity",
        "I",
        "R",
        "dockType",
        "r",
        "newDockType",
        "O",
        "P",
        "V",
        "H",
        "",
        "event",
        "E",
        "",
        "eventId",
        "",
        "switch",
        "F",
        "(Ljava/lang/String;Ljava/lang/Boolean;)V",
        "K",
        "J",
        "Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;",
        "pageColumn",
        "p",
        "enable",
        "m",
        "n",
        "o",
        "isHorizontal",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditorBundle",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;",
        "listener",
        "setListener",
        "Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;",
        "e",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;",
        "binding",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;",
        "h",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "NoteCommonSettingListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteCommonSettingsLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteCommonSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,390:1\n298#2,2:391\n*S KotlinDebug\n*F\n+ 1 NoteCommonSettingsLayout.kt\ncom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout\n*L\n303#1:391,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public g:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->e:Lkotlin/Lazy;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->s()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x800003

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->setPageScrollerGravity(I)V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x800005

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->setPageScrollerGravity(I)V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$targetDockType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->O(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, p2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "click_galaxy_docsSetting_toolbarPosition_0002"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p1, "click_galaxy_docsSetting_toolbarPosition_0004"

    goto :goto_0

    :cond_2
    const-string p1, "click_galaxy_docsSetting_toolbarPosition_0001"

    goto :goto_0

    :cond_3
    const-string p1, "click_galaxy_docsSetting_toolbarPosition_0003"

    :goto_0
    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->G(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic G(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->F(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final M(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->m(Z)V

    return-void
.end method

.method public static final N(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->H()V

    return-void
.end method

.method public static final T(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->n(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "view_galaxy_docsSetting_scrolling_0001"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->G(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    const-string p1, "click_galaxy_docsSetting_scrolling_0001"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->F(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final X(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->DOUBLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->SINGLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->p(Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;)V

    const-string p1, "click_galaxy_docsSetting_twoPageView_0001"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->F(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->v(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$toggleSetting(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->K()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->B(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->D(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->x(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->t(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->u(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->M(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    return-object p0
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->A(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->N(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->y(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->X(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->T(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private final setPageScrollerGravity(I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v3, 0x30

    const v4, 0x800003

    if-eq p1, v3, :cond_2

    const/16 v3, 0x50

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_2

    const v3, 0x800005

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->q(IZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->I()V

    if-ne p1, v4, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionStart:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionEnd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;->onChangeTheme(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;->onMoreSettings()V

    :cond_0
    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->J()V

    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;ILandroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->o(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->P(I)V

    if-nez p1, :cond_0

    const-string p1, "click_galaxy_docsSetting_pageTurnDirection_0002"

    goto :goto_0

    :cond_0
    const-string p1, "click_galaxy_docsSetting_pageTurnDirection_0001"

    :goto_0
    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->G(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/zuj;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/zuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->R()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->I()V

    return-void
.end method


# virtual methods
.method public final C(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    new-instance p2, Lcom/sunia/HTREnginev2/ruj;

    invoke-direct {p2, p0, p3}, Lcom/sunia/HTREnginev2/ruj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "note_twopage_view_switch"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "note_twopage_view_state"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p2, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final H()V
    .locals 11

    new-instance v9, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->adapt_pen_stroke_width_tip:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->ivAdaptStrokeWidthGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivAdaptStrokeWidthGuide"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-direct {v0, v9}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->ivAdaptStrokeWidthGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final I()V
    .locals 10

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->h:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->drag_tool_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v9, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final J()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SwitchNoteSettingsPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_0

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$showSwitchNoteSettingsPopup$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$showSwitchNoteSettingsPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/SwitchNoteSettingsPopup;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function0;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->tvCommonSettingsTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvCommonSettingsTitle"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->toggleDocFetchPolicy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->Y()V

    return-void
.end method

.method public final L()V
    .locals 7

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->adaptStrokeWidth:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->adaptStrokeWidth:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/avj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/avj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->ivAdaptStrokeWidthGuide:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivAdaptStrokeWidthGuide"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/quj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/quj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final O(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 4

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->h:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarTop:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarLeft:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarRight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final P(I)V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->layoutTypeHorizontal:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->layoutTypeVertical:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final Q()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->layoutTypeHorizontal:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "layoutTypeHorizontal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->w(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->layoutTypeVertical:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "layoutTypeVertical"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->w(Landroid/view/View;I)V

    return-void
.end method

.method public final R()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getScrollerGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isVerticalLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionStart:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionEnd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionStart:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionEnd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_8

    const v3, 0x800005

    const v4, 0x800003

    const/4 v6, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {v1, v5}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getScrollerGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)I

    move-result v0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionEnd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionStart:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    invoke-virtual {p0, v0, v5}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->q(IZ)V

    goto :goto_2

    :cond_5
    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionEnd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionStart:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirection:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_8
    const/16 v0, 0x30

    invoke-virtual {p0, v0, v5}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->q(IZ)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirection:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    return-void
.end method

.method public final S()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->singlePaging:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->singlePaging:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/vuj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->doc_local_settings:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->apply_for_this_doc:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->common_settings:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->apply_for_all_doc:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->tvCommonSettingsTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->tvCommonSettingsSubTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final V()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroidx/transition/ChangeScroll;

    invoke-direct {v2}, Landroidx/transition/ChangeScroll;-><init>()V

    invoke-static {v1, v2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "toolbar"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final W()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->twoPageBrowsing:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledPageMultiColumn(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->twoPageBrowsing:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/puj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/puj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final Y()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageOrientation:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirection:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->itemSinglePaging:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->itemTwoPageBrowsing:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->Q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->R()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->S()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->W()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->L()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->U()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->V()V

    return-void
.end method

.method public final m(Z)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;-><init>(Z)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->setEnabledAdaptiveStrokeWidth(Z)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final n(Z)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;-><init>(Z)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->setEnabledContinuousPage(Z)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final o(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;-><init>(I)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->setLayoutType(I)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;-><init>(I)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->setPageColumnCount(I)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final q(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;-><init>(IZ)V

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->setGlobalDocScrollerGravity(IZ)V

    :goto_1
    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->E(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->O(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public final s()V
    .locals 7

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->ensureDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "toolbarBottom"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->C(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarTop:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "toolbarTop"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->C(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarLeft:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "toolbarLeft"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->C(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->toolbarRight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "toolbarRight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->C(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->z()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->changeTheme:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "changeTheme"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/suj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/suj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "moreSettings"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/tuj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/tuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->tvCommonSettingsTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCommonSettingsTitle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/uuj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/uuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->Y()V

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;

    return-void
.end method

.method public final w(Landroid/view/View;I)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/yuj;

    invoke-direct {v4, p0, p2}, Lcom/sunia/HTREnginev2/yuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final z()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionStart:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/wuj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteCommonSettingsBinding;->pageNumberPanelDirectionEnd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/xuj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xuj;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
