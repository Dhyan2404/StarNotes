.class public Lcom/onyx/android/sdk/theme/utils/ResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "drawable"

.field public static final d:Ljava/lang/String; = "color"

.field public static e:Lcom/onyx/android/sdk/theme/utils/ResourceManager;


# instance fields
.field public a:Landroid/content/res/Resources;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/onyx/android/sdk/theme/utils/ResourceManager;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->e:Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->e:Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    invoke-direct {v1}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->e:Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->e:Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->a:Landroid/content/res/Resources;

    const-string v1, "color"

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getColorStateList(Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->a:Landroid/content/res/Resources;

    const-string v1, "color"

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->a:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setPluginResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->b:Ljava/lang/String;

    return-void
.end method
