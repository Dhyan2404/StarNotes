.class public final Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;",
        ">;",
        "Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$TemplateOrBuilder;"
    }
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:J

.field public k:J

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:I

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:F

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->h()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->h()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 3

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$a;)V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$1702(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->j:J

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$1802(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;J)J

    .line 6
    iget-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->k:J

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$1902(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;J)J

    .line 7
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2002(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2102(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->n:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2202(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I

    .line 10
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2302(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->p:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2402(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I

    .line 12
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2502(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2602(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2702(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2802(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->u:F

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2902(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;F)F

    .line 17
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->v:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3002(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I

    .line 18
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->w:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3102(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clear()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->j:J

    .line 8
    iput-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->k:J

    .line 9
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->n:I

    .line 12
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    .line 13
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->p:I

    .line 14
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->u:F

    .line 19
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->v:I

    .line 20
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->w:I

    return-object p0
.end method

.method public clearCategoryId()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContentPageId()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCreatedAt()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->j:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public clearOrderIndex()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->u:F

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOrientation()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->n:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResourceList()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSizeFormat()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->v:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatus()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->w:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTemplateArgs()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTitle()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTitleResName()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->p:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUniqueId()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUpdatedAt()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->k:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->clone()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContentPageId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentPageIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->j:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    .locals 0

    .line 3
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->c()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->u:F

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->n:I

    return p0
.end method

.method public getResourceList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResourceListBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSizeFormat()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSizeFormatBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->v:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->w:I

    return p0
.end method

.method public getTemplateArgs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateArgsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->p:I

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->k:J

    return-wide v0
.end method

.method public final h()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$1500()Z

    return-void
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto;->d()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3300()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
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

    .line 55
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 56
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 4

    .line 10
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getDefaultInstance()Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$1700(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCreatedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUpdatedAt()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2000(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTitleResName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2100(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setOrientation(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2300(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getType()I

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setType(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 31
    :cond_8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getResourceList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 32
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2500(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 34
    :cond_9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2600(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 37
    :cond_a
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getContentPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 38
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2700(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 40
    :cond_b
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getTemplateArgs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$2800(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 43
    :cond_c
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrderIndex()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getOrderIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setOrderIndex(F)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 45
    :cond_d
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSource()I

    move-result v0

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setSource(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 47
    :cond_e
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getStatus()I

    move-result v0

    if-eqz v0, :cond_f

    .line 48
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 49
    :cond_f
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3200(Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCategoryIdBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3900(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->r:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentPageIdBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$4000(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->s:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->j:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public setOrderIndex(F)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->u:F

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOrientation(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->n:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public setResourceList(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setResourceListBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3800(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->q:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSizeFormat(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSizeFormatBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3700(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSource(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->v:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->w:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTemplateArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTemplateArgsBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$4100(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->t:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3500(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTitleResName(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTitleResNameBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3600(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(I)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->p:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniqueIdBytes(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template;->access$3400(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;

    return-object p0
.end method

.method public setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/TemplateProto$Template$Builder;->k:J

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
