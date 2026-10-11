.class public Lcom/google/protobuf/TextFormat$Parser$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field public e:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

.field public f:Lcom/google/protobuf/TypeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->a:Z

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->b:Z

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->c:Z

    sget-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->e:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    invoke-static {}, Lcom/google/protobuf/TypeRegistry;->getEmptyTypeRegistry()Lcom/google/protobuf/TypeRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->f:Lcom/google/protobuf/TypeRegistry;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/TextFormat$Parser;
    .locals 9

    new-instance v8, Lcom/google/protobuf/TextFormat$Parser;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->f:Lcom/google/protobuf/TypeRegistry;

    iget-boolean v2, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->a:Z

    iget-boolean v3, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->b:Z

    iget-boolean v4, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->c:Z

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iget-object v6, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->e:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$Parser;-><init>(Lcom/google/protobuf/TypeRegistry;ZZZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Lcom/google/protobuf/TextFormat$a;)V

    return-object v8
.end method

.method public setAllowUnknownExtensions(Z)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowUnknownExtensions"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->c:Z

    return-object p0
.end method

.method public setAllowUnknownFields(Z)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowUnknownFields"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->a:Z

    return-object p0
.end method

.method public setParseInfoTreeBuilder(Lcom/google/protobuf/TextFormatParseInfoTree$Builder;)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInfoTreeBuilder"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->e:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    return-object p0
.end method

.method public setSingularOverwritePolicy(Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->d:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object p0
.end method

.method public setTypeRegistry(Lcom/google/protobuf/TypeRegistry;)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeRegistry"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->f:Lcom/google/protobuf/TypeRegistry;

    return-object p0
.end method
