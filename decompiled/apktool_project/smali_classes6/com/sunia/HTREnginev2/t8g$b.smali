.class public Lcom/sunia/HTREnginev2/t8g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/q8g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/t8g;
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
.method public a(FFFF)Lcom/sunia/HTREnginev2/u8g;
    .locals 0

    const/4 p0, 0x0

    const/16 p4, 0xff

    invoke-static {p4, p0, p2, p3, p1}, Lcom/sunia/HTREnginev2/jnn;->p(IIFFF)I

    move-result p0

    invoke-static {p0, p4}, Lcom/sunia/HTREnginev2/u8g;->b(II)Lcom/sunia/HTREnginev2/u8g;

    move-result-object p0

    return-object p0
.end method
