.class public Lcom/sunia/HTREnginev2/avi;
.super Lcom/sunia/HTREnginev2/mae;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/mae;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/avi;->d:Ljava/util/Hashtable;

    new-array p1, p1, [Lcom/sunia/HTREnginev2/hgk;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mae;->a:[Lcom/sunia/HTREnginev2/hgk;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/hgk;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/avi;->d:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/hgk;

    return-object p0
.end method

.method public c(Ljava/lang/String;Lcom/sunia/HTREnginev2/hgk;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/avi;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/mae;->a:[Lcom/sunia/HTREnginev2/hgk;

    iget v0, p0, Lcom/sunia/HTREnginev2/mae;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/mae;->b:I

    aput-object p2, p1, v0

    return-void
.end method
