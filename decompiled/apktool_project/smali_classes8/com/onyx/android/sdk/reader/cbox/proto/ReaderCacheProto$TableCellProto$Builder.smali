.class public final Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;",
        ">;",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProtoOrBuilder;"
    }
.end annotation


# instance fields
.field public i:I

.field public j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

.field public k:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

.field public m:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

.field public o:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 5
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 6
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 11
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 12
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->k()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAllTableRow(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public addTableRow(ILcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 20
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTableRow(ILcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 10
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTableRow(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 15
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTableRow(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTableRowBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;

    return-object p0
.end method

.method public addTableRowBuilder(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
    .locals 3

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7002(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7002(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7102(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7102(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7202(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7202(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 13
    :goto_2
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 14
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 15
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    .line 16
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7302(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7302(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;Ljava/util/List;)Ljava/util/List;

    :goto_3
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7402(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;I)I

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 9
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 13
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_2

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 17
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    return-object p0
.end method

.method public clearEnd()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public clearPin()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearStart()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearTableRow()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
    .locals 0

    .line 3
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->k()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getEnd()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public getEndBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public getEndOrBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getPin()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public getPinBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public getPinOrBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getStart()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    return-object p0
.end method

.method public getStartBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public getStartOrBuilder()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getTableRow(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    return-object p0
.end method

.method public getTableRowBuilder(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;

    return-object p0
.end method

.method public getTableRowBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTableRowCount()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result p0

    return p0
.end method

.method public getTableRowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTableRowOrBuilder(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;

    return-object p0
.end method

.method public getTableRowOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    :cond_0
    return-void
.end method

.method public hasEnd()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasPin()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasStart()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->getEnd()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->l()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->getPin()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public final k()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->getStart()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public final l()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    iget v2, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public final m()V
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$6800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method public mergeEnd(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilder(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7700()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    .line 41
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->getPin()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergePin(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->getStart()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeStart(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->getEnd()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeEnd(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 18
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 23
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    .line 30
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->i:I

    .line 31
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7500()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 34
    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;->access$7600(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePin(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilder(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeStart(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->newBuilder(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public removeTableRow(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setEnd(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setEnd(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->o:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->n:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public setPin(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPin(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->k:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->j:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method

.method public setStart(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setStart(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->m:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->l:Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTableRow(ILcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 9
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTableRow(ILcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableRowProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->q:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->h()V

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->p:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$TableCellProto$Builder;

    return-object p0
.end method
