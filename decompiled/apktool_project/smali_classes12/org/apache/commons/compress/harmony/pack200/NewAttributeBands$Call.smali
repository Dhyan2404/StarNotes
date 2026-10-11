.class public Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;
.super Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Call"
.end annotation


# instance fields
.field public final b:I

.field public c:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

.field public final synthetic d:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->d:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V

    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->b:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->b:I

    return p0
.end method


# virtual methods
.method public addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->c:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->b:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->c:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;->addBackwardsCall()V

    :cond_0
    return-void
.end method

.method public getCallable()Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->c:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    return-object p0
.end method

.method public getCallableIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->b:I

    return p0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setCallable(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->c:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->b:I

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;->setBackwardsCallable()V

    :cond_0
    return-void
.end method
