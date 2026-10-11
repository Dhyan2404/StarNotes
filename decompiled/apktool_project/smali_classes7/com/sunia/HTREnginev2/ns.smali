.class public final synthetic Lcom/sunia/HTREnginev2/ns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/ns;->e:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/ns;->e:I

    check-cast p1, Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->b(ILandroid/graphics/BitmapFactory$Options;)V

    return-void
.end method
