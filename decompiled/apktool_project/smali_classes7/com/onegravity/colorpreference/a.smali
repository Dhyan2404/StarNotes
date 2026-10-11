.class public Lcom/onegravity/colorpreference/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/hzn;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/onegravity/colorpreference/ColorDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/colorpreference/ColorDialog;->setOnColorSelectedListener(Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;)V

    :cond_0
    return-void
.end method

.method public static b(ILandroid/content/Context;)[I
    .locals 5
    .param p0    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p0

    :goto_1
    new-array v3, v2, [I

    :goto_2
    if-ge p1, v2, :cond_3

    if-eqz v1, :cond_2

    aget-object v4, v0, p1

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    :cond_2
    aget v4, p0, p1

    :goto_3
    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method public static c(Landroid/content/Context;Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;Ljava/lang/String;ILcom/onegravity/colorpreference/ColorShape;[II)V
    .locals 0

    invoke-static {p3, p4, p5, p6}, Lcom/onegravity/colorpreference/ColorDialog;->newInstance(ILcom/onegravity/colorpreference/ColorShape;[II)Lcom/onegravity/colorpreference/ColorDialog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/onegravity/colorpreference/ColorDialog;->setOnColorSelectedListener(Lcom/onegravity/colorpreference/ColorDialog$OnColorSelectedListener;)V

    invoke-static {p0}, Lcom/sunia/HTREnginev2/hzn;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
