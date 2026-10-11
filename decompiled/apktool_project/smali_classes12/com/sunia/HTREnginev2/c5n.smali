.class public final Lcom/sunia/HTREnginev2/c5n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x2

.field public static final d:I = 0x7


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Value"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c5n;->a:Ljava/lang/String;

    const-string p1, "Type"

    invoke-static {p2, p1}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/c5n;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/c5n;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/c5n;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/c5n;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/sunia/HTREnginev2/c5n;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/c5n;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/c5n;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/c5n;->b:I

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c5n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c5n;->a:Ljava/lang/String;

    return-object p0
.end method
