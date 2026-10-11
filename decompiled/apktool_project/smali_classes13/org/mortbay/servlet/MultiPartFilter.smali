.class public Lorg/mortbay/servlet/MultiPartFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/MultiPartFilter$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "org.mortbay.servlet.MultiPartFilter.files"


# instance fields
.field public a:Ljava/io/File;

.field public b:Z

.field public c:Ljavax/servlet/ServletContext;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljavax/servlet/ServletRequest;)V
    .locals 5

    const-string v0, "org.mortbay.servlet.MultiPartFilter.files"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/mortbay/servlet/MultiPartFilter;->c:Ljavax/servlet/ServletContext;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x3d

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x22

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    const-string v4, "org.mortbay.servlet.MultiPartFilter.files"

    move-object v5, v2

    check-cast v5, Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v5}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2c

    invoke-interface {v5}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "multipart/form-data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v0

    goto/16 :goto_16

    :cond_0
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "boundary="

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/mortbay/servlet/MultiPartFilter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    new-instance v9, Lorg/mortbay/util/MultiMap;

    invoke-direct {v9}, Lorg/mortbay/util/MultiMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, [Ljava/lang/String;

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lorg/mortbay/util/MultiMap;->addValues(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11, v12}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v6}, Lorg/mortbay/util/TypeUtil;->readLine(Ljava/io/InputStream;)[B

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v11, "UTF-8"

    if-nez v10, :cond_3

    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    if-eqz v13, :cond_2b

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_2
    if-nez v10, :cond_2a

    :goto_3
    invoke-static {v6}, Lorg/mortbay/util/TypeUtil;->readLine(Ljava/io/InputStream;)[B

    move-result-object v14

    if-nez v14, :cond_4

    goto/16 :goto_15

    :cond_4
    array-length v15, v14

    if-nez v15, :cond_28

    if-eqz v13, :cond_27

    new-instance v14, Ljava/util/StringTokenizer;

    const-string v15, ";"

    invoke-direct {v14, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_8

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v13

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v14

    const-string v14, "form-data"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    move/from16 v15, v17

    goto :goto_5

    :cond_5
    const-string v14, "name="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v1, v10}, Lorg/mortbay/servlet/MultiPartFilter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_6
    const-string v14, "filename="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v1, v10}, Lorg/mortbay/servlet/MultiPartFilter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_7
    :goto_5
    move-object/from16 v13, v16

    move/from16 v10, v18

    move-object/from16 v14, v19

    goto :goto_4

    :cond_8
    move/from16 v18, v10

    move-object/from16 v16, v13

    if-nez v15, :cond_9

    goto :goto_6

    :cond_9
    if-nez v12, :cond_a

    :goto_6
    move-object/from16 v13, v16

    move/from16 v10, v18

    goto :goto_2

    :cond_a
    if-eqz v7, :cond_d

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d

    const-string v10, "MultiPart"

    const-string v13, ""

    iget-object v14, v1, Lorg/mortbay/servlet/MultiPartFilter;->a:Ljava/io/File;

    invoke-static {v10, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v14, v1, Lorg/mortbay/servlet/MultiPartFilter;->d:I

    if-lez v14, :cond_b

    new-instance v14, Ljava/io/BufferedOutputStream;

    iget v15, v1, Lorg/mortbay/servlet/MultiPartFilter;->d:I

    invoke-direct {v14, v13, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v13, v14

    :cond_b
    invoke-interface {v2, v12, v10}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v12, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v7, v1, Lorg/mortbay/servlet/MultiPartFilter;->b:Z

    if-eqz v7, :cond_e

    invoke-virtual {v10}, Ljava/io/File;->deleteOnExit()V

    invoke-interface {v2, v4}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_c

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :cond_d
    :try_start_4
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v10, 0x0

    :cond_e
    :goto_7
    const/4 v7, -0x2

    move/from16 v19, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_8
    move/from16 v1, v19

    move-object/from16 v19, v4

    const/4 v4, 0x0

    :goto_9
    if-eq v1, v7, :cond_f

    move v7, v1

    move/from16 v20, v7

    goto :goto_a

    :cond_f
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v20

    move/from16 v7, v20

    move/from16 v20, v1

    :goto_a
    const/4 v1, -0x1

    const/16 v2, 0xd

    const/16 v0, 0xa

    if-eq v7, v1, :cond_17

    if-eq v7, v2, :cond_15

    if-ne v7, v0, :cond_10

    goto :goto_b

    :cond_10
    if-ltz v4, :cond_11

    array-length v1, v8

    if-ge v4, v1, :cond_11

    aget-byte v1, v8, v4

    if-ne v7, v1, :cond_11

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/4 v1, -0x2

    const/4 v7, -0x2

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_12

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_12
    if-eqz v15, :cond_13

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_13
    if-lez v4, :cond_14

    const/4 v0, 0x0

    invoke-virtual {v13, v8, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_14
    invoke-virtual {v13, v7}, Ljava/io/OutputStream;->write(I)V

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/4 v1, -0x2

    const/4 v4, -0x1

    const/4 v7, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_9

    :cond_15
    :goto_b
    if-ne v7, v2, :cond_16

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    goto :goto_c

    :cond_16
    const/4 v1, -0x2

    goto :goto_c

    :cond_17
    move/from16 v1, v20

    :goto_c
    if-lez v4, :cond_18

    array-length v0, v8

    add-int/lit8 v0, v0, -0x2

    if-lt v4, v0, :cond_19

    :cond_18
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_1c

    :cond_19
    if-eqz v14, :cond_1a

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_1a
    if-eqz v15, :cond_1b

    const/16 v0, 0xa

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {v13, v8, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    const/4 v4, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_1c
    if-gtz v4, :cond_24

    const/4 v0, -0x1

    if-ne v7, v0, :cond_1d

    goto :goto_11

    :cond_1d
    if-eqz v14, :cond_1e

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_1e
    if-eqz v15, :cond_1f

    const/16 v0, 0xa

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_d

    :cond_1f
    const/16 v0, 0xa

    :goto_d
    if-ne v7, v2, :cond_20

    move/from16 v14, v17

    goto :goto_e

    :cond_20
    const/4 v14, 0x0

    :goto_e
    if-eq v7, v0, :cond_22

    if-ne v1, v0, :cond_21

    goto :goto_f

    :cond_21
    const/4 v15, 0x0

    goto :goto_10

    :cond_22
    :goto_f
    move/from16 v15, v17

    :goto_10
    if-ne v1, v0, :cond_23

    const/4 v1, -0x2

    :cond_23
    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v4, v19

    const/4 v7, -0x2

    move/from16 v19, v1

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_24
    :goto_11
    array-length v0, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v4, v0, :cond_25

    goto :goto_12

    :cond_25
    move/from16 v17, v18

    :goto_12
    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    if-nez v10, :cond_26

    check-cast v13, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v13, v16

    move/from16 v10, v17

    move-object/from16 v4, v19

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v13

    goto :goto_13

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    :goto_13
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing content-disposition"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v19, v4

    move/from16 v18, v10

    move-object/from16 v16, v13

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v14, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v1, 0x3a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_29

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content-disposition"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v13, v0

    goto :goto_14

    :cond_29
    move-object/from16 v13, v16

    :goto_14
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v10, v18

    move-object/from16 v4, v19

    goto/16 :goto_3

    :cond_2a
    :goto_15
    new-instance v0, Lorg/mortbay/servlet/MultiPartFilter$a;

    invoke-direct {v0, v5, v9}, Lorg/mortbay/servlet/MultiPartFilter$a;-><init>(Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/MultiMap;)V

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual/range {p0 .. p1}, Lorg/mortbay/servlet/MultiPartFilter;->a(Ljavax/servlet/ServletRequest;)V

    return-void

    :cond_2b
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing initial multi part boundary"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual/range {p0 .. p1}, Lorg/mortbay/servlet/MultiPartFilter;->a(Ljavax/servlet/ServletRequest;)V

    throw v0

    :cond_2c
    move-object v1, v0

    move-object/from16 v2, p1

    :goto_16
    invoke-interface {v3, v2, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "javax.servlet.context.tempdir"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->a:Ljava/io/File;

    const-string v0, "deleteFiles"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->b:Z

    const-string v0, "fileOutputBuffer"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->d:I

    :cond_0
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/servlet/MultiPartFilter;->c:Ljavax/servlet/ServletContext;

    return-void
.end method
