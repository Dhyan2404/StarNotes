.class public final Lcom/onyx/android/sdk/theme/utils/TintManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/utils/TintManager$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "TintManager"

.field public static final g:Z = false

.field public static final h:Landroid/graphics/PorterDuff$Mode;

.field public static final i:Ljava/lang/String; = "appcompat_skip_skip"

.field public static final j:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/theme/utils/TintManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/onyx/android/sdk/theme/utils/TintManager$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->h:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->j:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/TintManager$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/utils/TintManager$a;-><init>(I)V

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->k:Lcom/onyx/android/sdk/theme/utils/TintManager$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/theme/utils/TintManager;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static clearTintCache()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/theme/utils/TintManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->b()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->k:Lcom/onyx/android/sdk/theme/utils/TintManager$a;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public static e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->k:Lcom/onyx/android/sdk/theme/utils/TintManager$a;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager$a;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/theme/utils/TintManager$a;->c(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    return-object v1
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    instance-of v0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/TintManager;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/theme/utils/TintManager;

    if-nez v1, :cond_3

    new-instance v1, Lcom/onyx/android/sdk/theme/utils/TintManager;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "[get TintManager] create new TintManager."

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->f(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public static tintViewBackground(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintInfo;)V
    .locals 4

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v1, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v2, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget-boolean v3, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_5

    iget-object p1, p1, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/onyx/android/sdk/theme/utils/TintManager;->h:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p1, p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->c(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static tintViewDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/onyx/android/sdk/theme/utils/TintInfo;)V
    .locals 3

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    iget-object p2, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-virtual {v1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-boolean v2, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mHasTintMode:Z

    if-eqz v2, :cond_5

    iget-object p2, p2, Lcom/onyx/android/sdk/theme/utils/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/onyx/android/sdk/theme/utils/TintManager;->h:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v0, v1, p2, p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->c(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p2, Lcom/onyx/android/sdk/theme/drawables/FilterableStateListDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->d:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->d:Landroid/util/SparseArray;

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->d:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return v1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->e:Landroid/util/SparseArray;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public final d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->d:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCacheDrawable] Get drawable from cache: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->c:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    :cond_2
    if-nez v0, :cond_4

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/z2e;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->c:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->c:Landroid/util/SparseArray;

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->e:Landroid/util/SparseArray;

    const-string v3, "appcompat_skip_skip"

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "[Match Skip DrawableTag] Skip the drawable which is matched with the skip tag."

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->f(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->e:Landroid/util/SparseArray;

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/theme/utils/TintManager;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadDrawable] Saved drawable to cache: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->f(Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/TintManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_5
    return-object v1
.end method
