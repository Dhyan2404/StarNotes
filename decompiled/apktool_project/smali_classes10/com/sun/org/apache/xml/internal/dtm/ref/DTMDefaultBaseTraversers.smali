.class public abstract Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method


# virtual methods
.method public getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_traversers:[Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNamesLength()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_traversers:[Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_AXIS_TYPE"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_7
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_9
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_a
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_b
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_c
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_d
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_e
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_f
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_10
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_11
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_12
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_13
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    goto :goto_1

    :pswitch_14
    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers$1;)V

    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_traversers:[Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    aput-object v1, p0, p1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
