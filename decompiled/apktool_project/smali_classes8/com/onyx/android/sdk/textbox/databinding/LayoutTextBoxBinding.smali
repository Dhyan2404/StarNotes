.class public abstract Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final btnMove:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivBottom:Lcom/onyx/android/sdk/textbox/widget/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivLeft:Lcom/onyx/android/sdk/textbox/widget/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivMove:Lcom/onyx/android/sdk/textbox/widget/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivRight:Lcom/onyx/android/sdk/textbox/widget/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivTop:Lcom/onyx/android/sdk/textbox/widget/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftBottomHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftTopHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mIsAdaptiveMode:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mResizeIconRes:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final rightBottomHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightTopHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectionBottomHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectionLeftHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectionRightHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectionTopHandle:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final touchContainer:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->btnMove:Landroid/widget/FrameLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->editorContainer:Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->ivBottom:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->ivLeft:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->ivMove:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->ivRight:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->ivTop:Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftBottomHandle:Landroid/widget/FrameLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftTopHandle:Landroid/widget/FrameLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightBottomHandle:Landroid/widget/FrameLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightTopHandle:Landroid/widget/FrameLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionBottomHandle:Landroid/widget/FrameLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionLeftHandle:Landroid/widget/FrameLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionRightHandle:Landroid/widget/FrameLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionTopHandle:Landroid/widget/FrameLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->touchContainer:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/android/sdk/textbox/R$layout;->layout_text_box:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/android/sdk/textbox/R$layout;->layout_text_box:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/android/sdk/textbox/R$layout;->layout_text_box:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    return-object p0
.end method


# virtual methods
.method public getIsAdaptiveMode()Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->mIsAdaptiveMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getResizeIconRes()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->mResizeIconRes:Ljava/lang/Integer;

    return-object p0
.end method

.method public abstract setIsAdaptiveMode(Ljava/lang/Boolean;)V
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setResizeIconRes(Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
