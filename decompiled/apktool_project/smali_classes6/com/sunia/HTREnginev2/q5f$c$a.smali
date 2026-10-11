.class public final Lcom/sunia/HTREnginev2/q5f$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/q5f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/sunia/HTREnginev2/h5n;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sunia/HTREnginev2/h5n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q5f$c$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/q5f$c$a;->b:Lcom/sunia/HTREnginev2/h5n;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/sunia/HTREnginev2/h5n;Lcom/sunia/HTREnginev2/q5f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/q5f$c$a;-><init>(Ljava/lang/Object;Lcom/sunia/HTREnginev2/h5n;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/q5f$c$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q5f$c$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/q5f$c$a;)Lcom/sunia/HTREnginev2/h5n;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q5f$c$a;->b:Lcom/sunia/HTREnginev2/h5n;

    return-object p0
.end method
