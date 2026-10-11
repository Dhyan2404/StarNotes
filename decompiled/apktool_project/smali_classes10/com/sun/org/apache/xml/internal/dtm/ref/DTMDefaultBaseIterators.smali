.class public abstract Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$RootIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method


# virtual methods
.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_7
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_9
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_0

    :pswitch_a
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_c
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$RootIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->setNodeType(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_7
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_9
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_0

    :pswitch_a
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :pswitch_c
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
