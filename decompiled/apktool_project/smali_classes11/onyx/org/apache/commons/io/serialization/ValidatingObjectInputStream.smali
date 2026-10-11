.class public Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->f:Ljava/util/List;

    return-void
.end method

.method public static synthetic H(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/mwg;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mwg;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mwg;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic I(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/mwg;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mwg;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mwg;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/mwg;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->H(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/mwg;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/mwg;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->I(Ljava/lang/Class;)Lcom/sunia/HTREnginev2/mwg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/util/regex/Pattern;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2

    .line 3
    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->e:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/njl;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/njl;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public accept(Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 2
    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs accept([Ljava/lang/Class;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/qzn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qzn;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->e:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/rzn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/rzn;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public varargs accept([Ljava/lang/String;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2

    .line 4
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/szn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/szn;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->e:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/tzn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/tzn;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public invalidClassNameFound(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    new-instance p0, Ljava/io/InvalidClassException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class name not accepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reject(Ljava/util/regex/Pattern;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2

    .line 3
    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->f:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/njl;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/njl;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public reject(Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1

    .line 2
    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs reject([Ljava/lang/Class;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/uzn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uzn;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/rzn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/rzn;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public varargs reject([Ljava/lang/String;)Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2

    .line 4
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/szn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/szn;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/tzn;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/tzn;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->w(Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;

    invoke-interface {v1, p1}, Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->invalidClassNameFound(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;

    invoke-interface {v1, p1}, Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/serialization/ValidatingObjectInputStream;->invalidClassNameFound(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
