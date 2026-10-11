.class public Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/AppCompatSwitchHelper$DrawableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat$b;->a:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat$b;->a:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat$b;->a:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
