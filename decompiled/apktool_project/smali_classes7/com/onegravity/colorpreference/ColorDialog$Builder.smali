.class public Lcom/onegravity/colorpreference/ColorDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/colorpreference/ColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:Lcom/onegravity/colorpreference/ColorShape;

.field public d:Landroid/content/Context;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ColorActivityType:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;",
            ">(TColorActivityType;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->a:I

    sget-object v0, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    iput-object v0, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->c:Lcom/onegravity/colorpreference/ColorShape;

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->d:Landroid/content/Context;

    sget p1, Lcom/onegravity/colorpicker/R$array;->default_color_choice_values:I

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorDialog$Builder;->setColorChoices(I)Lcom/onegravity/colorpreference/ColorDialog$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/onegravity/colorpreference/ColorDialog;
    .locals 4

    iget v0, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->a:I

    iget-object v1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->c:Lcom/onegravity/colorpreference/ColorShape;

    iget-object v2, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->b:[I

    iget v3, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/onegravity/colorpreference/ColorDialog;->newInstance(ILcom/onegravity/colorpreference/ColorShape;[II)Lcom/onegravity/colorpreference/ColorDialog;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->d:Landroid/content/Context;

    check-cast p0, Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;

    invoke-virtual {v0, p0}, Lcom/onegravity/colorpreference/ColorDialog;->setOnColorSelectedListener(Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;)V

    return-object v0
.end method

.method public setColorChoices(I)Lcom/onegravity/colorpreference/ColorDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/onegravity/colorpreference/a;->b(ILandroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->b:[I

    return-object p0
.end method

.method public setColorShape(Lcom/onegravity/colorpreference/ColorShape;)Lcom/onegravity/colorpreference/ColorDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->c:Lcom/onegravity/colorpreference/ColorShape;

    return-object p0
.end method

.method public setNumColumns(I)Lcom/onegravity/colorpreference/ColorDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->a:I

    return-object p0
.end method

.method public setSelectedColor(I)Lcom/onegravity/colorpreference/ColorDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->e:I

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/onegravity/colorpreference/ColorDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public show()Lcom/onegravity/colorpreference/ColorDialog;
    .locals 4

    invoke-virtual {p0}, Lcom/onegravity/colorpreference/ColorDialog$Builder;->build()Lcom/onegravity/colorpreference/ColorDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/hzn;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object p0, p0, Lcom/onegravity/colorpreference/ColorDialog$Builder;->f:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, v1, p0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method
