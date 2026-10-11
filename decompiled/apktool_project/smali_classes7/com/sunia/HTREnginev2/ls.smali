.class public final synthetic Lcom/sunia/HTREnginev2/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/ls;->e:I

    iput p2, p0, Lcom/sunia/HTREnginev2/ls;->f:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/ls;->e:I

    iget p0, p0, Lcom/sunia/HTREnginev2/ls;->f:I

    check-cast p1, Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->c(IILandroid/graphics/BitmapFactory$Options;)V

    return-void
.end method
