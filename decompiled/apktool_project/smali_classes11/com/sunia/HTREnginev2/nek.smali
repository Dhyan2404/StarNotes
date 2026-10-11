.class public final synthetic Lcom/sunia/HTREnginev2/nek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nek;->a:[B

    iput p2, p0, Lcom/sunia/HTREnginev2/nek;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/nek;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nek;->a:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/nek;->b:I

    iget p0, p0, Lcom/sunia/HTREnginev2/nek;->c:I

    check-cast p1, Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-static {v0, v1, p0, p1}, Lonyx/org/apache/commons/io/input/ObservableInputStream;->w([BIILonyx/org/apache/commons/io/input/ObservableInputStream$Observer;)V

    return-void
.end method
