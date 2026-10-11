.class public Lorg/apache/poi/hwpf/model/PAPBinTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field protected final _paragraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hwpf/model/PAPX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/PAPBinTable;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([B[B[BIILorg/apache/poi/hwpf/model/CharIndexTranslator;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    new-instance v2, Lorg/apache/poi/hwpf/model/PlexOfCps;

    const/4 v3, 0x4

    invoke-direct {v2, p2, p4, p5, v3}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>([BIII)V

    .line 7
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PlexOfCps;->length()I

    move-result p2

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p2, :cond_2

    .line 8
    invoke-virtual {v2, p5}, Lorg/apache/poi/hwpf/model/PlexOfCps;->getProperty(I)Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v3

    mul-int/lit16 v3, v3, 0x200

    .line 10
    new-instance v4, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;

    invoke-direct {v4, p1, p3, v3, p6}, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;-><init>([B[BILorg/apache/poi/hwpf/model/CharIndexTranslator;)V

    .line 11
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;->getPAPXs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hwpf/model/PAPX;

    if-eqz v4, :cond_0

    .line 12
    iget-object v5, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 13
    :cond_2
    sget-object p1, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, v0

    invoke-static {p5, p6}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    invoke-static {p5}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, "PAPX tables loaded in {} ms ({} elements)"

    invoke-interface {p2, p6, p3, p5}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "PAPX FKPs are empty"

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    new-instance p1, Lorg/apache/poi/hwpf/model/PAPX;

    new-instance p2, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;-><init>(I)V

    invoke-direct {p1, p4, p4, p2}, Lorg/apache/poi/hwpf/model/PAPX;-><init>(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lorg/apache/poi/hwpf/model/PAPX;Lorg/apache/poi/hwpf/model/PAPX;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hwpf/model/PAPBinTable;->lambda$rebuild$0(Ljava/util/Map;Lorg/apache/poi/hwpf/model/PAPX;Lorg/apache/poi/hwpf/model/PAPX;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$rebuild$0(Ljava/util/Map;Lorg/apache/poi/hwpf/model/PAPX;Lorg/apache/poi/hwpf/model/PAPX;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static rebuild(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/model/ComplexFileTable;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/poi/hwpf/model/ComplexFileTable;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwpf/model/PAPX;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getGrpprls()[Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/model/ComplexFileTable;->getTextPieceTable()Lorg/apache/poi/hwpf/model/TextPieceTable;

    move-result-object v7

    .line 5
    invoke-virtual {v7}, Lorg/apache/poi/hwpf/model/TextPieceTable;->getTextPieces()Ljava/util/List;

    move-result-object v7

    .line 6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hwpf/model/TextPiece;

    .line 7
    invoke-virtual {v8}, Lorg/apache/poi/hwpf/model/TextPiece;->getPieceDescriptor()Lorg/apache/poi/hwpf/model/PieceDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/hwpf/model/PieceDescriptor;->getPrm()Lorg/apache/poi/hwpf/model/PropertyModifier;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Lorg/apache/poi/hwpf/model/PropertyModifier;->isComplex()Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v9}, Lorg/apache/poi/hwpf/model/PropertyModifier;->getIgrpprl()S

    move-result v9

    if-ltz v9, :cond_5

    .line 10
    array-length v10, v6

    if-lt v9, v10, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    aget-object v9, v6, v9

    .line 12
    invoke-virtual {v9}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->iterator()Lorg/apache/poi/hwpf/sprm/SprmIterator;

    move-result-object v10

    .line 13
    :cond_3
    invoke-virtual {v10}, Lorg/apache/poi/hwpf/sprm/SprmIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 14
    invoke-virtual {v10}, Lorg/apache/poi/hwpf/sprm/SprmIterator;->next()Lorg/apache/poi/hwpf/sprm/SprmOperation;

    move-result-object v11

    .line 15
    invoke-virtual {v11}, Lorg/apache/poi/hwpf/sprm/SprmOperation;->getType()I

    move-result v11

    if-ne v11, v5, :cond_3

    move v10, v5

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_0

    .line 16
    new-instance v10, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    invoke-direct {v10, v3}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;-><init>(I)V

    .line 17
    invoke-virtual {v9}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->append([B)V

    .line 18
    new-instance v9, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v8}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v11

    .line 19
    invoke-virtual {v8}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v8

    invoke-direct {v9, v11, v8, v10}, Lorg/apache/poi/hwpf/model/PAPX;-><init>(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    .line 20
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_5
    :goto_2
    sget-object v9, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v9}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v9

    const-string v10, "{}\'s PRM references to unknown grpprl"

    invoke-interface {v9, v10, v8}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_6
    sget-object v6, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Merged (?) with PAPX from complex file table in {} ms ({} elements in total)"

    invoke-interface {v6, v7, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 24
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    sget-object v7, Lorg/apache/poi/hwpf/model/PropertyNode;->EndComparator:Ljava/util/Comparator;

    invoke-interface {v6, v7}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 26
    sget-object v7, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PAPX sorted by end position in {} ms"

    invoke-interface {v7, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 28
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 29
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/hwpf/model/PAPX;

    add-int/lit8 v11, v9, 0x1

    .line 30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v9, v11

    goto :goto_3

    .line 31
    :cond_8
    new-instance v8, Lcom/sunia/HTREnginev2/rjk;

    invoke-direct {v8, v7}, Lcom/sunia/HTREnginev2/rjk;-><init>(Ljava/util/Map;)V

    .line 32
    sget-object v7, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-static {v9, v10}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PAPX\'s order map created in {} ms"

    invoke-interface {v7, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 34
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 35
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-ge v9, v12, :cond_14

    move-object/from16 v12, p0

    .line 36
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_9

    const/4 v14, 0x7

    if-eq v13, v14, :cond_9

    const/16 v14, 0xc

    if-eq v13, v14, :cond_9

    move v5, v3

    goto/16 :goto_b

    :cond_9
    add-int/lit8 v13, v9, 0x1

    .line 37
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move v15, v11

    .line 38
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    .line 39
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hwpf/model/PAPX;

    .line 40
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    if-le v3, v9, :cond_a

    move v3, v5

    move v11, v15

    goto :goto_6

    .line 41
    :cond_a
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_c

    .line 42
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    move v11, v3

    .line 43
    :cond_c
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 44
    sget-object v3, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-static {v10}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Paragraph [{}; {}) has no PAPX. Creating new one."

    invoke-interface {v3, v15, v4, v14}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    new-instance v3, Lorg/apache/poi/hwpf/model/PAPX;

    new-instance v4, Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    const/4 v14, 0x2

    invoke-direct {v4, v14}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;-><init>(I)V

    invoke-direct {v3, v10, v13, v4}, Lorg/apache/poi/hwpf/model/PAPX;-><init>(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    .line 46
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    const/4 v5, 0x2

    goto :goto_a

    .line 47
    :cond_d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_e

    const/4 v3, 0x0

    .line 48
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hwpf/model/PAPX;

    .line 49
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v15

    if-ne v15, v10, :cond_f

    .line 50
    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v15

    if-ne v15, v13, :cond_f

    .line 51
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    .line 52
    :cond_f
    invoke-interface {v14, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 53
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v14, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/hwpf/model/PAPX;

    .line 54
    invoke-virtual {v15}, Lorg/apache/poi/hwpf/model/PAPX;->getGrpprl()[B

    move-result-object v16

    if-eqz v16, :cond_12

    invoke-virtual {v15}, Lorg/apache/poi/hwpf/model/PAPX;->getGrpprl()[B

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x2

    if-gt v3, v5, :cond_10

    goto :goto_9

    :cond_10
    if-nez v14, :cond_11

    .line 55
    invoke-virtual {v15}, Lorg/apache/poi/hwpf/model/PAPX;->getSprmBuf()Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->copy()Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    move-result-object v3

    move-object v14, v3

    goto :goto_9

    .line 56
    :cond_11
    invoke-virtual {v15}, Lorg/apache/poi/hwpf/model/PAPX;->getGrpprl()[B

    move-result-object v3

    invoke-virtual {v14, v3, v5}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->append([BI)V

    goto :goto_9

    :cond_12
    const/4 v5, 0x2

    :goto_9
    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_8

    :cond_13
    const/4 v5, 0x2

    .line 57
    new-instance v3, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-direct {v3, v10, v13, v14}, Lorg/apache/poi/hwpf/model/PAPX;-><init>(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    .line 58
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    move v10, v13

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move v3, v5

    const/4 v5, 0x1

    goto/16 :goto_4

    .line 59
    :cond_14
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    sget-object v3, Lorg/apache/poi/hwpf/model/PAPBinTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "PAPX rebuilded from document text in {} ms ({} elements)"

    invoke-interface {v3, v2, v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public adjustForDelete(III)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/PAPX;

    move v3, p1

    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/PAPX;

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v2, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v2, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {v2, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_3

    iget-object p1, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public adjustForInsert(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getParagraphs()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hwpf/model/PAPX;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public insert(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/hwpf/model/PAPX;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3}, Lorg/apache/poi/hwpf/model/PAPX;-><init>(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    iget-object p3, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p1, p3, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/hwpf/model/PAPX;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v2

    if-ge v2, p2, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/hwpf/model/PAPX;->getSprmBuf()Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/sprm/SprmBuffer;->copy()Lorg/apache/poi/hwpf/sprm/SprmBuffer;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-direct {v3, v1, v1, v2}, Lorg/apache/poi/hwpf/model/PAPX;-><init>(IILorg/apache/poi/hwpf/sprm/SprmBuffer;)V

    invoke-virtual {v3, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setStart(I)V

    invoke-virtual {p3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    invoke-virtual {p3, p2}, Lorg/apache/poi/hwpf/model/PropertyNode;->setEnd(I)V

    iget-object p2, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public rebuild(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/model/ComplexFileTable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-static {p1, p2, p0}, Lorg/apache/poi/hwpf/model/PAPBinTable;->rebuild(Ljava/lang/StringBuilder;Lorg/apache/poi/hwpf/model/ComplexFileTable;Ljava/util/List;)V

    return-void
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;Lorg/apache/poi/hwpf/model/CharIndexTranslator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hwpf/model/PlexOfCps;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/poi/hwpf/model/PlexOfCps;-><init>(I)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    rem-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_0

    rsub-int v2, v2, 0x200

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    div-int/lit16 v2, v2, 0x200

    iget-object v3, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/PropertyNode;->getEnd()I

    move-result v3

    invoke-interface {p3, v3}, Lorg/apache/poi/hwpf/model/CharIndexTranslator;->getByteIndex(I)I

    move-result v3

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/PAPBinTable;->_paragraphs:Ljava/util/ArrayList;

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v5}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v5

    invoke-interface {p3, v5}, Lorg/apache/poi/hwpf/model/CharIndexTranslator;->getByteIndex(I)I

    move-result v5

    new-instance v6, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;

    invoke-direct {v6}, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;-><init>()V

    invoke-virtual {v6, p0}, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;->fill(Ljava/util/List;)V

    invoke-virtual {v6, p2, p3}, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;->toByteArray(Ljava/io/ByteArrayOutputStream;Lorg/apache/poi/hwpf/model/CharIndexTranslator;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/model/PAPFormattedDiskPage;->getOverflow()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hwpf/model/PAPX;

    invoke-virtual {v6}, Lorg/apache/poi/hwpf/model/PropertyNode;->getStart()I

    move-result v6

    invoke-interface {p3, v6}, Lorg/apache/poi/hwpf/model/CharIndexTranslator;->getByteIndex(I)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    new-array v7, v1, [B

    add-int/lit8 v8, v2, 0x1

    invoke-static {v7, v4, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    new-instance v2, Lorg/apache/poi/hwpf/model/GenericPropertyNode;

    invoke-direct {v2, v5, v6, v7}, Lorg/apache/poi/hwpf/model/GenericPropertyNode;-><init>(II[B)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/PlexOfCps;->addProperty(Lorg/apache/poi/hwpf/model/GenericPropertyNode;)V

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/PlexOfCps;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2
    move v2, v8

    goto :goto_0
.end method
