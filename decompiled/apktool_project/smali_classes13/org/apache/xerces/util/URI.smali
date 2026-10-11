.class public Lorg/apache/xerces/util/URI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static final ASCII_ALPHA_CHARACTERS:I = 0x10

.field private static final ASCII_DIGIT_CHARACTERS:I = 0x20

.field private static final ASCII_HEX_CHARACTERS:I = 0x40

.field private static final MARK_CHARACTERS:I = 0x2

.field private static final MASK_ALPHA_NUMERIC:I = 0x30

.field private static final MASK_PATH_CHARACTER:I = 0xb2

.field private static final MASK_SCHEME_CHARACTER:I = 0x34

.field private static final MASK_UNRESERVED_MASK:I = 0x32

.field private static final MASK_URI_CHARACTER:I = 0x33

.field private static final MASK_USERINFO_CHARACTER:I = 0x3a

.field private static final PATH_CHARACTERS:I = 0x80

.field private static final RESERVED_CHARACTERS:I = 0x1

.field private static final SCHEME_CHARACTERS:I = 0x4

.field private static final USERINFO_CHARACTERS:I = 0x8

.field private static final fgLookupTable:[B

.field static final serialVersionUID:J = 0x163b2b5de215849eL


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_regAuthority:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v1, 0x30

    :goto_0
    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    const/16 v1, 0x41

    :goto_1
    const/16 v2, 0x46

    if-le v1, v2, :cond_1

    const/16 v1, 0x47

    :goto_2
    const/16 v2, 0x5a

    if-le v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3b

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v4, 0x2f

    aget-byte v5, v1, v4

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v6, 0x3f

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/16 v6, 0x3a

    aget-byte v7, v1, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/16 v8, 0x40

    aget-byte v9, v1, v8

    or-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    const/16 v10, 0x26

    aget-byte v11, v1, v10

    or-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    const/16 v12, 0x3d

    aget-byte v13, v1, v12

    or-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    const/16 v14, 0x2b

    aget-byte v15, v1, v14

    or-int/lit8 v15, v15, 0x1

    int-to-byte v15, v15

    aput-byte v15, v1, v14

    const/16 v16, 0x24

    aget-byte v17, v1, v16

    or-int/lit8 v8, v17, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, v16

    const/16 v17, 0x2c

    aget-byte v18, v1, v17

    or-int/lit8 v4, v18, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v17

    const/16 v18, 0x5b

    aget-byte v19, v1, v18

    or-int/lit8 v0, v19, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v18

    const/16 v0, 0x5d

    aget-byte v18, v1, v0

    or-int/lit8 v12, v18, 0x1

    int-to-byte v12, v12

    aput-byte v12, v1, v0

    const/16 v0, 0x2d

    aget-byte v12, v1, v0

    or-int/lit8 v12, v12, 0x2

    int-to-byte v12, v12

    aput-byte v12, v1, v0

    const/16 v18, 0x5f

    aget-byte v20, v1, v18

    or-int/lit8 v10, v20, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v18

    const/16 v10, 0x2e

    aget-byte v18, v1, v10

    or-int/lit8 v6, v18, 0x2

    int-to-byte v6, v6

    aput-byte v6, v1, v10

    const/16 v18, 0x21

    aget-byte v21, v1, v18

    or-int/lit8 v2, v21, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v18

    const/16 v2, 0x7e

    aget-byte v18, v1, v2

    or-int/lit8 v10, v18, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    const/16 v2, 0x2a

    aget-byte v10, v1, v2

    or-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    const/16 v2, 0x27

    aget-byte v10, v1, v2

    or-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    const/16 v2, 0x28

    aget-byte v10, v1, v2

    or-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    const/16 v2, 0x29

    aget-byte v10, v1, v2

    or-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    or-int/lit8 v2, v15, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v14

    or-int/lit8 v10, v12, 0x4

    int-to-byte v10, v10

    aput-byte v10, v1, v0

    or-int/lit8 v0, v6, 0x4

    int-to-byte v0, v0

    const/16 v6, 0x2e

    aput-byte v0, v1, v6

    or-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    const/16 v3, 0x3b

    aput-byte v0, v1, v3

    or-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    const/16 v6, 0x3a

    aput-byte v3, v1, v6

    or-int/lit8 v6, v11, 0x8

    int-to-byte v6, v6

    const/16 v7, 0x26

    aput-byte v6, v1, v7

    or-int/lit8 v7, v13, 0x8

    int-to-byte v7, v7

    const/16 v10, 0x3d

    aput-byte v7, v1, v10

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v14

    or-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v16

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v17

    const/16 v10, 0x80

    or-int/2addr v0, v10

    int-to-byte v0, v0

    const/16 v11, 0x3b

    aput-byte v0, v1, v11

    or-int/lit16 v0, v5, 0x80

    int-to-byte v0, v0

    const/16 v5, 0x2f

    aput-byte v0, v1, v5

    or-int/lit16 v0, v3, 0x80

    int-to-byte v0, v0

    const/16 v3, 0x3a

    aput-byte v0, v1, v3

    or-int/lit16 v0, v9, 0x80

    int-to-byte v0, v0

    const/16 v3, 0x40

    aput-byte v0, v1, v3

    or-int/lit16 v0, v6, 0x80

    int-to-byte v0, v0

    const/16 v3, 0x26

    aput-byte v0, v1, v3

    or-int/lit16 v0, v7, 0x80

    int-to-byte v0, v0

    const/16 v3, 0x3d

    aput-byte v0, v1, v3

    or-int/lit16 v0, v2, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v14

    or-int/lit16 v0, v8, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v16

    or-int/lit16 v0, v4, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v17

    return-void

    :cond_0
    move v10, v0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x20

    aget-byte v3, v0, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v0, v10

    goto/16 :goto_2

    :cond_1
    move v10, v0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x20

    aget-byte v3, v0, v2

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v0, v10

    goto/16 :goto_1

    :cond_2
    move v10, v0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x60

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v10

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    if-nez p3, :cond_2

    if-nez p2, :cond_1

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Port may not be specified if host is not specified!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Userinfo may not be specified if host is not specified!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p5, :cond_6

    const/16 v0, 0x3f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    if-nez p6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Query string cannot be specified in path and query string!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/16 v0, 0x23

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_6

    if-nez p7, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Fragment cannot be specified in both the path and fragment!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/xerces/util/URI;->setHost(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/xerces/util/URI;->setPort(I)V

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lorg/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lorg/apache/xerces/util/URI;->setQueryString(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lorg/apache/xerces/util/URI;->setFragment(Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Scheme is required!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 5
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V

    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Cannot initialize URI with empty parameters."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    return-void

    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "No scheme found in URI."

    const/16 v4, 0x3f

    const/16 v5, 0x23

    const/16 v6, 0x2f

    const/4 v7, -0x1

    if-eq v2, v7, :cond_8

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p2, v6, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v9

    invoke-virtual {p2, v4, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v10

    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v8

    if-eqz v2, :cond_6

    if-ne v9, v7, :cond_6

    if-ne v10, v7, :cond_6

    if-eq v8, v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Scheme specific part cannot be empty."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    if-nez p1, :cond_a

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {p0, v3}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez p1, :cond_a

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {p0, v3}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_10

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_10

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_10

    add-int/lit8 v0, v0, 0x2

    move v2, v0

    :goto_4
    if-lt v2, v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_d

    if-eq v3, v4, :cond_d

    if-ne v3, v5, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    if-le v2, v0, :cond_e

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    :cond_e
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    :cond_f
    move v0, v2

    :cond_10
    :goto_6
    invoke-direct {p0, p2, v0}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    :cond_11
    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, ""

    if-nez p1, :cond_2

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    iput-object v2, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Cannot initialize URI with empty parameters."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    return-void

    :cond_3
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const-string v4, "No scheme found in URI."

    const/16 v5, 0x3f

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p2, v7, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v10

    invoke-virtual {p2, v5, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    invoke-virtual {p2, v6, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v9

    if-eqz v3, :cond_6

    if-ne v10, v8, :cond_6

    if-ne v11, v8, :cond_6

    if-eq v9, v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p3, v1, -0x1

    if-eq v3, p3, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-eq p3, v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Scheme specific part cannot be empty."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    if-nez p1, :cond_a

    if-eqz v9, :cond_a

    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {p0, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez p1, :cond_a

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p3, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {p0, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    add-int/lit8 p3, v0, 0x1

    if-ge p3, v1, :cond_10

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_10

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v7, :cond_10

    add-int/lit8 v0, v0, 0x2

    move p3, v0

    :goto_3
    if-lt p3, v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_d

    if-eq v3, v5, :cond_d

    if-ne v3, v6, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    if-le p3, v0, :cond_e

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    add-int/lit8 v0, v0, -0x2

    goto :goto_5

    :cond_e
    iput-object v2, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    :cond_f
    move v0, p3

    :cond_10
    :goto_5
    invoke-direct {p0, p2, v0}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    :cond_11
    return-void
.end method

.method private initializeAuthority(Ljava/lang/String;)Z
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    const/16 v8, 0x3a

    if-ne v6, v7, :cond_6

    const/16 v6, 0x5d

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v5, :cond_3

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    add-int/2addr v6, v4

    if-ge v6, v0, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_4

    :goto_4
    move v7, v4

    goto :goto_6

    :cond_4
    move v6, v0

    :cond_5
    move v7, v2

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    if-le v6, v3, :cond_7

    goto :goto_5

    :cond_7
    move v6, v0

    :goto_5
    if-eq v6, v0, :cond_5

    goto :goto_4

    :cond_8
    move v7, v2

    move v6, v3

    :goto_6
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    if-eqz v7, :cond_b

    add-int/2addr v6, v4

    move v7, v6

    :goto_7
    if-lt v7, v0, :cond_a

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v5, :cond_9

    add-int/lit8 v0, v0, -0x1

    :cond_9
    move v5, v0

    goto :goto_8

    :catch_0
    const/4 v5, -0x2

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    invoke-direct {p0, v3, v5, v1}, Lorg/apache/xerces/util/URI;->isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object v3, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    iput v5, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iput-object v1, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return v4

    :cond_c
    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    return v4

    :cond_d
    return v2
.end method

.method private initializePath(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    const/16 v2, 0x25

    const/16 v3, 0x23

    const/4 v4, 0x0

    if-ge p2, v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    move v5, p2

    :goto_0
    if-lt v5, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_d

    if-ne v4, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    if-ne v4, v2, :cond_4

    add-int/lit8 v6, v5, 0x2

    if-ge v6, v0, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Opaque part contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Opaque part contains invalid character: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    move v5, p2

    :goto_3
    if-lt v5, v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_9

    add-int/lit8 v6, v5, 0x2

    if-ge v6, v0, :cond_8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_4

    :cond_8
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Path contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v6

    if-nez v6, :cond_b

    if-eq v4, v1, :cond_d

    if-ne v4, v3, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Path contains invalid character: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    move v5, p2

    :cond_d
    :goto_5
    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-ne v4, v1, :cond_13

    add-int/lit8 v5, v5, 0x1

    move p2, v5

    :goto_6
    if-lt p2, v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_f

    :goto_7
    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move v5, p2

    goto :goto_9

    :cond_f
    if-ne v4, v2, :cond_11

    add-int/lit8 v1, p2, 0x2

    if-ge v1, v0, :cond_10

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result p2

    if-eqz p2, :cond_10

    move p2, v1

    goto :goto_8

    :cond_10
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Query string contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_12
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Query string contains invalid character: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_9
    if-ne v4, v3, :cond_18

    add-int/lit8 v5, v5, 0x1

    move p2, v5

    :goto_a
    if-lt p2, v0, :cond_14

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_c

    :cond_14
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_16

    add-int/lit8 v1, p2, 0x2

    if-ge v1, v0, :cond_15

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result p2

    if-eqz p2, :cond_15

    move p2, v1

    goto :goto_b

    :cond_15
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Fragment contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v3

    if-eqz v3, :cond_17

    :goto_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_17
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Fragment contains invalid character: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_c
    return-void

    :cond_19
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Cannot initialize path from null string!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "No scheme found in URI."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isAlpha(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAlphanum(C)Z
    .locals 1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x30

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isAlpha(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isSchemeCharacter(C)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isHex(C)Z
    .locals 1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPathCharacter(C)Z
    .locals 1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xb2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isReservedCharacter(C)Z
    .locals 1

    const/16 v0, 0x5d

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSchemeCharacter(C)Z
    .locals 1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x34

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isURICharacter(C)Z
    .locals 1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x33

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_5
    return v0
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x32

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUserinfoCharacter(C)Z
    .locals 1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x3a

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidRegistryBasedAuthority(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-lt v1, p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, 0x2

    if-ge v3, p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    return v0

    :cond_3
    invoke-static {v3}, Lorg/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    :goto_2
    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lorg/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    if-lt p2, p0, :cond_8

    const p0, 0xffff

    if-le p2, p0, :cond_1

    goto :goto_4

    :cond_1
    const/4 p0, 0x1

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    move v0, p1

    :goto_0
    if-lt v0, p2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_5

    add-int/lit8 v1, v0, 0x2

    if-ge v1, p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    return p1

    :cond_5
    invoke-static {v1}, Lorg/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v1

    if-nez v1, :cond_6

    return p1

    :cond_6
    :goto_2
    add-int/2addr v0, p0

    goto :goto_0

    :cond_7
    :goto_3
    return p0

    :cond_8
    :goto_4
    return p1
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lorg/apache/xerces/util/URI;->isWellFormedIPv6Reference(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    :cond_4
    const/4 v2, 0x1

    add-int/2addr v4, v2

    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lorg/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    const/16 v4, 0xff

    if-le v1, v4, :cond_6

    return v0

    :cond_6
    move v4, v0

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_a

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    :cond_8
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v1, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v5

    if-nez v5, :cond_9

    return v0

    :cond_9
    move v5, v0

    goto :goto_1

    :cond_a
    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_b

    return v0

    :cond_b
    add-int/2addr v5, v2

    const/16 v6, 0x3f

    if-le v5, v6, :cond_c

    return v0

    :cond_c
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_d
    :goto_2
    return v0
.end method

.method public static isWellFormedIPv4Address(Ljava/lang/String;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lt v2, v0, :cond_1

    if-ne v3, v5, :cond_0

    move v1, v6

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_6

    if-lez v2, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    if-le v3, v5, :cond_5

    return v1

    :cond_5
    move v4, v1

    goto :goto_1

    :cond_6
    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_7

    return v1

    :cond_7
    add-int/2addr v4, v6

    if-le v4, v5, :cond_8

    return v1

    :cond_8
    if-ne v4, v5, :cond_a

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x32

    if-lt v5, v8, :cond_a

    if-ne v5, v8, :cond_9

    const/16 v5, 0x35

    if-lt v6, v5, :cond_a

    if-ne v6, v5, :cond_9

    if-le v7, v5, :cond_a

    :cond_9
    return v1

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isWellFormedIPv6Reference(Ljava/lang/String;)Z
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [I

    invoke-static {p0, v0, v1, v4}, Lorg/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    return v2

    :cond_1
    const/16 v7, 0x8

    if-ne v5, v1, :cond_3

    aget p0, v4, v2

    if-ne p0, v7, :cond_2

    move v2, v0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v1, :cond_a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_9

    aget v8, v4, v2

    add-int/2addr v8, v0

    aput v8, v4, v2

    if-le v8, v7, :cond_4

    return v2

    :cond_4
    add-int/2addr v5, v3

    if-ne v5, v1, :cond_5

    return v0

    :cond_5
    invoke-static {p0, v5, v1, v4}, Lorg/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v3

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_8

    aget v4, v4, v2

    if-le v4, v8, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v2, v0

    :cond_8
    return v2

    :cond_9
    aget v3, v4, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v2, v0

    :cond_a
    :goto_0
    return v2
.end method

.method private static scanHexSequence(Ljava/lang/String;II[I)I
    .locals 7

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, -0x1

    if-lt v1, p2, :cond_1

    if-lez v2, :cond_0

    aget p0, p3, v0

    add-int/lit8 p0, p0, 0x1

    aput p0, p3, v0

    if-gt p0, v3, :cond_0

    goto :goto_1

    :cond_0
    move p2, v4

    :goto_1
    return p2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_5

    if-lez v2, :cond_2

    aget v5, p3, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, p3, v0

    if-le v5, v3, :cond_2

    return v4

    :cond_2
    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    if-ge v2, p2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_4

    :cond_4
    :goto_2
    return v1

    :cond_5
    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    const/4 v6, 0x4

    if-nez v3, :cond_8

    const/16 p0, 0x2e

    if-ne v5, p0, :cond_7

    if-ge v2, v6, :cond_7

    if-lez v2, :cond_7

    aget p0, p3, v0

    const/4 p2, 0x6

    if-gt p0, p2, :cond_7

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :goto_3
    return v1

    :cond_7
    return v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    if-le v2, v6, :cond_9

    return v4

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public absolutize(Lorg/apache/xerces/util/URI;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_4

    add-int/2addr v1, v3

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "/./"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_9

    const-string v1, "/."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move v1, v3

    :goto_2
    const-string v5, "/../"

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_7

    const-string v1, "/.."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    add-int/2addr v0, v3

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    return-void

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, ".."

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v1, v6

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_9
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public appendPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Path contains invalid character!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/xerces/util/URI;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/apache/xerces/util/URI;

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_c

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_c

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_c

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget v0, p0, Lorg/apache/xerces/util/URI;->m_port:I

    iget v1, p1, Lorg/apache/xerces/util/URI;->m_port:I

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_c

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v0, :cond_c

    iget-object v1, p1, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez p0, :cond_a

    iget-object v0, p1, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v0, :cond_b

    :cond_a
    if-eqz p0, :cond_c

    iget-object p1, p1, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    return-object p0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/16 p1, 0x23

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/URI;->m_port:I

    return p0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    return-object p0
.end method

.method public getRegBasedAuthority()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    return-object p0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return-object p0
.end method

.method public isAbsoluteURI()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGenericURI()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Fragment contains invalid character!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Fragment cannot be set when path is null!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Fragment can only be set for a generic URI!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Host is not a well formed address!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    :cond_3
    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Port cannot be set when host is null!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    :goto_0
    iput p1, p0, Lorg/apache/xerces/util/URI;->m_port:I

    return-void

    :cond_2
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Invalid port number!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Query string contains invalid character!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Query string cannot be set when path is null!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Query string can only be set for a generic URI!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRegBasedAuthority(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iput v2, p0, Lorg/apache/xerces/util/URI;->m_port:I

    return-void

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Registry based authority is not well formed."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/xerces/util/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "The scheme is not conformant."

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Cannot set scheme from null string!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    iput-object p1, p0, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Userinfo contains invalid escape sequence!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Userinfo contains invalid character:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/xerces/util/URI$MalformedURIException;

    const-string p1, "Userinfo cannot be set when host is null!"

    invoke-direct {p0, p1}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
