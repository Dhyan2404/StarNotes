.class public abstract Lorg/apache/poi/hwpf/model/PropertyNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/poi/common/Duplicatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/poi/hwpf/model/PropertyNode<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;",
        "Lorg/apache/poi/common/Duplicatable;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final EndComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/poi/hwpf/model/PropertyNode<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final StartComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/poi/hwpf/model/PropertyNode<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _buf:Ljava/lang/Object;

.field private _cpEnd:I

.field private _cpStart:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/w8l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/w8l;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/PropertyNode;->EndComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sunia/HTREnginev2/x8l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x8l;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/PropertyNode;->StartComparator:Ljava/util/Comparator;

    const-class v0, Lorg/apache/poi/hwpf/model/PropertyNode;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/PropertyNode;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    .line 7
    iput p2, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    .line 8
    iput-object p3, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    if-gez p1, :cond_0

    .line 9
    sget-object p1, Lorg/apache/poi/hwpf/model/PropertyNode;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    iget p2, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "A property claimed to start before zero, at {}! Resetting it to zero, and hoping for the best"

    invoke-interface {p1, p3, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    .line 11
    :cond_0
    iget p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    iget p2, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    if-ge p1, p2, :cond_1

    .line 12
    sget-object p1, Lorg/apache/poi/hwpf/model/PropertyNode;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    iget p2, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "A property claimed to end ({}) before start! Resetting end to start, and hoping for the best"

    invoke-interface {p1, p3, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwpf/model/PropertyNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hwpf/model/PropertyNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    .line 3
    iget v0, p1, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    iput v0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    return-void
.end method


# virtual methods
.method public adjustForDelete(II)V
    .locals 3

    add-int v0, p1, p2

    iget v1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    if-le v1, p1, :cond_2

    iget v2, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    if-ge v2, v0, :cond_1

    if-lt v0, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p2

    :goto_0
    iput v1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    goto :goto_1

    :cond_1
    sub-int/2addr v1, p2

    iput v1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hwpf/model/PropertyNode;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->compareTo(Lorg/apache/poi/hwpf/model/PropertyNode;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/hwpf/model/PropertyNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2
    iget p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/PropertyNode;->copy()Lorg/apache/poi/hwpf/model/PropertyNode;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hwpf/model/PropertyNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/hwpf/model/PropertyNode<",
            "*>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/hwpf/model/PropertyNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->limitsAreEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/hwpf/model/PropertyNode;

    iget-object p1, p1, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    check-cast p1, [B

    check-cast v0, [B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getEnd()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_buf:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public limitsAreEqual(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lorg/apache/poi/hwpf/model/PropertyNode;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result p1

    iget p0, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpEnd:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwpf/model/PropertyNode;->_cpStart:I

    return-void
.end method
