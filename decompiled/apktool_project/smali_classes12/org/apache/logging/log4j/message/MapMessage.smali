.class public Lorg/apache/logging/log4j/message/MapMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/apache/logging/log4j/message/MapMessage<",
        "TM;TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation

.annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    value = {
        "allocation"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45d360f8f7f9fb90L


# instance fields
.field private final data:Lorg/apache/logging/log4j/util/IndexedStringMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    return-void
.end method

.method private asJava(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "sb",
            "quoted"
        }
    .end annotation

    const/16 v0, 0x7b

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-lez v0, :cond_0

    const-string v1, ", "

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sunia/HTREnginev2/pvk;->B(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "sb"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->appendMap(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->appendMap(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asJavaUnquoted(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asJava(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asJson(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asXml(Ljava/lang/StringBuilder;)V

    :goto_0
    return-object p2
.end method

.method private getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 4
    aget-object v1, p1, v0

    invoke-static {v1}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->lookupIgnoreCase(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public appendMap(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sunia/HTREnginev2/pvk;->B(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public asJava(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->asJava(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public asJavaUnquoted(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->asJava(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public asJson(Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p1, p0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 2
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MapMessage;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asXml(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    const-string v0, "<Map>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "  <Entry key=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sunia/HTREnginev2/pvk;->B(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-static {p1, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeXml(Ljava/lang/StringBuilder;I)V

    const-string v1, "</Entry>\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "</Map>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0}, Lorg/apache/logging/log4j/util/StringMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/message/MapMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    iget-object p1, p1, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CV:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/BiConsumer<",
            "Ljava/lang/String;",
            "-TCV;>;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    return-void
.end method

.method public forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CV:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "-TCV;TS;>;TS;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public formatTo([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formats",
            "buffer"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/pvk;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v3, v1}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    return-object p0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 0

    invoke-static {}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->names()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MapMessage;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedMessage([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndexedReadOnlyStringMap()Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)TM;"
        }
    .end annotation

    new-instance p0, Lorg/apache/logging/log4j/message/MapMessage;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No value provided for key "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/util/StringMap;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method public toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "candidateKey"
        }
    .end annotation

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MapMessage;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public validate(Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public validate(Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 3
    return-void
.end method

.method public validate(Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 4
    return-void
.end method

.method public validate(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 5
    return-void
.end method

.method public validate(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 6
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 7
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 8
    return-void
.end method

.method public validate(Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 9
    return-void
.end method

.method public validate(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 10
    return-void
.end method

.method public with(Ljava/lang/String;B)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)TM;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;B)V

    .line 6
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;C)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)TM;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;C)V

    .line 9
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;D)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TM;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;D)V

    .line 12
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;F)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TM;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;F)V

    .line 15
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;I)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TM;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;J)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TM;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;J)V

    .line 21
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TM;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;S)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)TM;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;S)V

    .line 27
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public with(Ljava/lang/String;Z)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TM;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
