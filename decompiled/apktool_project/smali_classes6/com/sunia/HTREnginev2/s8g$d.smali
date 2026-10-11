.class public Lcom/sunia/HTREnginev2/s8g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/r8g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/s8g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)Lcom/sunia/HTREnginev2/v8g;
    .locals 1

    sub-float p0, p3, p2

    mul-float/2addr p0, p4

    add-float/2addr p0, p2

    const/16 p4, 0xff

    const/4 v0, 0x0

    invoke-static {p4, v0, p2, p0, p1}, Lcom/sunia/HTREnginev2/knn;->p(IIFFF)I

    move-result p2

    invoke-static {v0, p4, p0, p3, p1}, Lcom/sunia/HTREnginev2/knn;->p(IIFFF)I

    move-result p0

    invoke-static {p2, p0}, Lcom/sunia/HTREnginev2/v8g;->b(II)Lcom/sunia/HTREnginev2/v8g;

    move-result-object p0

    return-object p0
.end method
