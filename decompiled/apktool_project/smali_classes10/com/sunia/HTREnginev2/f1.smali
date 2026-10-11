.class public Lcom/sunia/HTREnginev2/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/f1$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/f1$a;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/f1$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f1;->a:Lcom/sunia/HTREnginev2/f1$a;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/sunia/HTREnginev2/f1$a;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f1;->a:Lcom/sunia/HTREnginev2/f1$a;

    return-object p0
.end method
