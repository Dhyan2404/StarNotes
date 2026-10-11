.class public final Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;",
        ">;",
        "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProtoOrBuilder;"
    }
.end annotation


# instance fields
.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAllXpath(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->h()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public addXpath(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->h()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 3

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$a;)V

    .line 4
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    .line 6
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4302(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;Ljava/util/List;)Ljava/util/List;

    .line 8
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->k:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4402(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I

    .line 9
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->l:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4502(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I

    .line 10
    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->m:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4602(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I

    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4702(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    .line 7
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->k:I

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->l:I

    .line 10
    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->m:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public clearNodePosition()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->k:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public clearTextEndOffset()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->m:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTextStartOffset()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearXpath()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->clone()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    .locals 0

    .line 3
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->g()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getNodePosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->k:I

    return p0
.end method

.method public getTextEndOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->m:I

    return p0
.end method

.method public getTextStartOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->l:I

    return p0
.end method

.method public getXpath(I)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getXpathCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getXpathList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4100()Z

    return-void
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto;->h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    const-class v1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4900()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
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

    .line 30
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    .line 31
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getDefaultInstance()Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    .line 14
    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->i:I

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->h()V

    .line 16
    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4300(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getNodePosition()I

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getNodePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setNodePosition(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextStartOffset()I

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextStartOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setTextStartOffset(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextEndOffset()I

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->getTextEndOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setTextEndOffset(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    .line 24
    :cond_5
    invoke-static {p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;->access$4800(Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public setNodePosition(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->k:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public setTextEndOffset(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->m:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTextStartOffset(I)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;

    return-object p0
.end method

.method public setXpath(II)Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->h()V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$PositionProto$Builder;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
