.class public final synthetic Lcom/sunia/HTREnginev2/vlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vlg;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/sunia/HTREnginev2/vlg;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/vlg;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vlg;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/sunia/HTREnginev2/vlg;->b:I

    iget p0, p0, Lcom/sunia/HTREnginev2/vlg;->c:I

    check-cast p1, Ljava/io/Writer;

    invoke-static {v0, v1, p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->f(Ljava/lang/CharSequence;IILjava/io/Writer;)V

    return-void
.end method
