.class public final Lcom/google/android/odml/image/MlImage$Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/odml/image/MlImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Internal"
.end annotation


# instance fields
.field public final a:Lcom/google/android/odml/image/MlImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/odml/image/MlImage;Lcom/sunia/HTREnginev2/wmp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/MlImage$Internal;->a:Lcom/google/android/odml/image/MlImage;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/odml/image/MlImage$Internal;->a:Lcom/google/android/odml/image/MlImage;

    invoke-static {p0}, Lcom/google/android/odml/image/MlImage;->j(Lcom/google/android/odml/image/MlImage;)V

    return-void
.end method
