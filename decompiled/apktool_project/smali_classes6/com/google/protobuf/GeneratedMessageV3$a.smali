.class public Lcom/google/protobuf/GeneratedMessageV3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/protobuf/AbstractMessage$BuilderParent;

.field public final synthetic b:Lcom/google/protobuf/GeneratedMessageV3;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageV3;Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parent"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$a;->b:Lcom/google/protobuf/GeneratedMessageV3;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3$a;->a:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3$a;->a:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    invoke-interface {p0}, Lcom/google/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    return-void
.end method
