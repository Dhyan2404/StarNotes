.class public Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m_Typetable:Ljava/util/Hashtable;


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_output:Z

.field private m_type:I

.field private m_typeName:Ljava/lang/String;

.field private m_value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_type:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_name:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_value:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_output:Z

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_typeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_name:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_value:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_output:Z

    .line 11
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setTypeName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_value:Ljava/lang/String;

    .line 15
    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_output:Z

    .line 16
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setTypeName(Ljava/lang/String;)V

    return-void
.end method

.method private static map_type(Ljava/lang/String;)I
    .locals 10

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    const/16 v1, 0x457

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "BIGINT"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v4, -0x2

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "BINARY"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v4, -0x7

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "BIT"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "CHAR"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v5, 0x5b

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "DATE"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "DECIMAL"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "DOUBLE"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "FLOAT"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "INTEGER"

    invoke-virtual {v0, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, -0x4

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, "LONGVARBINARY"

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v6, -0x1

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, "LONGVARCHAR"

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, "NULL"

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "NUMERIC"

    invoke-virtual {v0, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "OTHER"

    invoke-virtual {v0, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v7, 0x7

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v7, "REAL"

    invoke-virtual {v0, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v7, 0x5

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "SMALLINT"

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "TIME"

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "TIMESTAMP"

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v8, -0x6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "TINYINT"

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/4 v8, -0x3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "VARBINARY"

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v9, "VARCHAR"

    invoke-virtual {v0, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "STRING"

    invoke-virtual {v0, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, "BIGDECIMAL"

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "BOOLEAN"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "BYTES"

    invoke-virtual {v0, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "LONG"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "SHORT"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_Typetable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_type:I

    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_typeName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_value:Ljava/lang/String;

    return-object p0
.end method

.method public isOutput()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_output:Z

    return p0
.end method

.method public setIsOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_output:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->map_type(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_type:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_typeName:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->m_value:Ljava/lang/String;

    return-void
.end method
