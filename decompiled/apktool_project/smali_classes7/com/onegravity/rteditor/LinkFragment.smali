.class public Lcom/onegravity/rteditor/LinkFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/LinkFragment$c;,
        Lcom/onegravity/rteditor/LinkFragment$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "link_address"

.field public static final f:Ljava/lang/String; = "link_text"

.field public static final g:Lcom/onegravity/rteditor/utils/validator/UrlValidator;

.field public static final h:Lcom/onegravity/rteditor/utils/validator/EmailValidator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onegravity/rteditor/utils/validator/UrlValidator;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;-><init>(J)V

    sput-object v0, Lcom/onegravity/rteditor/LinkFragment;->g:Lcom/onegravity/rteditor/utils/validator/UrlValidator;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->getInstance(Z)Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/LinkFragment;->h:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/rteditor/LinkFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onegravity/rteditor/LinkFragment;->f(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onegravity/rteditor/LinkFragment;->h(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onegravity/rteditor/LinkFragment;->g(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onegravity/rteditor/LinkFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/onegravity/rteditor/LinkFragment;->e(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/onegravity/rteditor/LinkFragment$c;

    new-instance v0, Lcom/onegravity/rteditor/LinkFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/onegravity/rteditor/LinkFragment$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onegravity/rteditor/LinkFragment$a;)V

    const/4 p1, 0x1

    invoke-direct {p3, p0, v0, p1}, Lcom/onegravity/rteditor/LinkFragment$c;-><init>(Landroid/app/Fragment;Lcom/onegravity/rteditor/LinkFragment$b;Z)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic f(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/onegravity/rteditor/LinkFragment$c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/onegravity/rteditor/LinkFragment$c;-><init>(Landroid/app/Fragment;Lcom/onegravity/rteditor/LinkFragment$b;Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic g(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/LinkFragment;->k(Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic h(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 1

    check-cast p4, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p4, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    new-instance v0, Lcom/sunia/HTREnginev2/yyi;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/yyi;-><init>(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onegravity/rteditor/LinkFragment;
    .locals 3

    new-instance v0, Lcom/onegravity/rteditor/LinkFragment;

    invoke-direct {v0}, Lcom/onegravity/rteditor/LinkFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link_text"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "link_address"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final i(Landroid/widget/TextView;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mailto:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onegravity/rteditor/LinkFragment;->h:Lcom/onegravity/rteditor/utils/validator/EmailValidator;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/utils/validator/EmailValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/onegravity/rteditor/LinkFragment;->g:Lcom/onegravity/rteditor/utils/validator/UrlValidator;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/utils/validator/UrlValidator;->isValid(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/LinkFragment;->i(Landroid/widget/TextView;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/Helper;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/LinkFragment;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/onegravity/rteditor/LinkFragment$c;

    new-instance v2, Lcom/onegravity/rteditor/LinkFragment$b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/onegravity/rteditor/LinkFragment$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onegravity/rteditor/LinkFragment$a;)V

    invoke-direct {v1, p0, v2, v4}, Lcom/onegravity/rteditor/LinkFragment$c;-><init>(Landroid/app/Fragment;Lcom/onegravity/rteditor/LinkFragment$b;Z)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    sget p2, Lcom/onegravity/rteditor/R$string;->rte_invalid_link:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v4
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/onegravity/rteditor/LinkFragment$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/onegravity/rteditor/LinkFragment$c;-><init>(Landroid/app/Fragment;Lcom/onegravity/rteditor/LinkFragment$b;Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/onegravity/rteditor/R$layout;->rte_link:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "link_address"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {v3}, Lcom/onegravity/rteditor/utils/Helper;->decodeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/onegravity/rteditor/LinkFragment;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-string v4, "http://"

    :goto_0
    sget v5, Lcom/onegravity/rteditor/R$id;->linkURL:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v6, "link_text"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v6, Lcom/onegravity/rteditor/R$id;->linkText:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/onegravity/rteditor/R$string;->rte_create_a_link:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/vyi;

    invoke-direct {v0, p0, v4}, Lcom/sunia/HTREnginev2/vyi;-><init>(Lcom/onegravity/rteditor/LinkFragment;Ljava/lang/String;)V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz v3, :cond_4

    sget v0, Lcom/onegravity/rteditor/R$string;->rte_remove_action:I

    new-instance v1, Lcom/sunia/HTREnginev2/wyi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wyi;-><init>(Lcom/onegravity/rteditor/LinkFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/xyi;

    invoke-direct {v0, p0, v5, v6, p1}, Lcom/sunia/HTREnginev2/xyi;-><init>(Lcom/onegravity/rteditor/LinkFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method
