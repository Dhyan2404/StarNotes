.class public Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$c;->a:Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$c;->a:Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$c;->a:Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPwdOrVerification()Landroidx/databinding/ObservableField;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
