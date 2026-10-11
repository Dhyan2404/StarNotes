.class public Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;
.super Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;
.source "SourceFile"


# static fields
.field private static final S_CODE:Ljava/lang/String; = "code"

.field private static final S_EXT_ERROR:Ljava/lang/String; = "ext-error"

.field private static final S_MESSAGE:Ljava/lang/String; = "message"

.field private static final S_SQL_ERROR:Ljava/lang/String; = "sql-error"

.field private static final S_SQL_WARNING:Ljava/lang/String; = "sql-warning"

.field private static final S_STATE:Ljava/lang/String; = "state"


# instance fields
.field private m_Code_TypeID:I

.field private m_ErrorExt_TypeID:I

.field private m_MainMessageID:I

.field private m_Message_TypeID:I

.field private m_SQLError_TypeID:I

.field private m_SQLWarning_TypeID:I

.field private m_State_TypeID:I

.field private m_extErrorID:I

.field private m_rootID:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;ILjava/lang/Exception;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;I)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_ErrorExt_TypeID:I

    .line 18
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    .line 19
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Code_TypeID:I

    .line 20
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_State_TypeID:I

    .line 21
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLWarning_TypeID:I

    .line 22
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLError_TypeID:I

    .line 23
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_rootID:I

    .line 24
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    .line 25
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_MainMessageID:I

    .line 26
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->createExpandedNameTable()V

    .line 27
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->buildBasicStructure(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;ILjava/lang/Exception;Ljava/sql/SQLWarning;Z)V
    .locals 9

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;I)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_ErrorExt_TypeID:I

    .line 30
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    .line 31
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Code_TypeID:I

    .line 32
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_State_TypeID:I

    .line 33
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLWarning_TypeID:I

    .line 34
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLError_TypeID:I

    .line 35
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_rootID:I

    .line 36
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    .line 37
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_MainMessageID:I

    .line 38
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->createExpandedNameTable()V

    .line 39
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->buildBasicStructure(Ljava/lang/Exception;)V

    .line 40
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_MainMessageID:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 41
    instance-of v1, p3, Ljava/sql/SQLException;

    if-eqz v1, :cond_0

    .line 42
    move-object p4, p3

    check-cast p4, Ljava/sql/SQLException;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object p4, p2

    :goto_0
    if-eqz p4, :cond_5

    if-eqz v0, :cond_2

    .line 43
    iget p3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLWarning_TypeID:I

    goto :goto_1

    :cond_2
    iget p3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLError_TypeID:I

    :goto_1
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p3, v1, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result p1

    const/4 v8, -0x1

    .line 44
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p3

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Code_TypeID:I

    move-object v3, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    move-result v8

    .line 45
    invoke-virtual {p4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    move-result v8

    if-eqz p5, :cond_1

    .line 46
    invoke-virtual {p4}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_3

    const/4 v5, 0x3

    .line 48
    iget v6, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_State_TypeID:I

    move-object v3, p0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    :cond_3
    if-eqz v0, :cond_4

    .line 49
    check-cast p4, Ljava/sql/SQLWarning;

    invoke-virtual {p4}, Ljava/sql/SQLWarning;->getNextWarning()Ljava/sql/SQLWarning;

    move-result-object p3

    goto :goto_2

    .line 50
    :cond_4
    invoke-virtual {p4}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object p3

    :goto_2
    move-object p4, p3

    goto :goto_0

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;ILjava/sql/SQLException;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_ErrorExt_TypeID:I

    .line 3
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    .line 4
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Code_TypeID:I

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_State_TypeID:I

    .line 6
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLWarning_TypeID:I

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLError_TypeID:I

    .line 8
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_rootID:I

    .line 9
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    .line 10
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_MainMessageID:I

    .line 11
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->createExpandedNameTable()V

    .line 12
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->buildBasicStructure(Ljava/lang/Exception;)V

    .line 13
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLError_TypeID:I

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_MainMessageID:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result p1

    const/4 v7, -0x1

    .line 14
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p2

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Code_TypeID:I

    move-object v2, p0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    move-result v7

    .line 15
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    return-void
.end method

.method private buildBasicStructure(Ljava/lang/Exception;)V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->m_Document_TypeID:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_rootID:I

    const/4 v1, 0x1

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_ErrorExt_TypeID:I

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElement(IIII)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SQLWarning"

    :goto_0
    move-object v1, p1

    const/4 v2, 0x2

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_extErrorID:I

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->addElementWithData(Ljava/lang/Object;IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_MainMessageID:I

    return-void
.end method


# virtual methods
.method public createExpandedNameTable()V
    .locals 4

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DTMDocument;->createExpandedNameTable()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v1, "http://xml.apache.org/xalan/SQLExtension"

    const-string v2, "ext-error"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_ErrorExt_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "sql-error"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLError_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "message"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Message_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "code"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_Code_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "state"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_State_TypeID:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v2, "sql-warning"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;->m_SQLWarning_TypeID:I

    return-void
.end method
