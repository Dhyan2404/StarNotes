.class public Lcom/sunia/HTREnginev2/k2e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/k2e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/k2e$d;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k2e$d;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/k2e$d;)I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/k2e$d;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/k2e$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2e$d;->b:Ljava/lang/String;

    return-object p0
.end method
