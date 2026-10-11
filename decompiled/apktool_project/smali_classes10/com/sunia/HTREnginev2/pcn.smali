.class public Lcom/sunia/HTREnginev2/pcn;
.super Lcom/sunia/HTREnginev2/cin;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/cin;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pcn;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/cin;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pcn;->b:Ljava/lang/String;

    return-object p0
.end method
