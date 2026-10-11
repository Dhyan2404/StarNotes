.class public final Lcom/google/protobuf/FieldInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Field;

.field public b:Lcom/google/protobuf/FieldType;

.field public c:I

.field public d:Ljava/lang/reflect/Field;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Lcom/sunia/HTREnginev2/kgk;

.field public i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Object;

.field public k:Lcom/google/protobuf/Internal$EnumVerifier;

.field public l:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/FieldInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/FieldInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/FieldInfo;
    .locals 7

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->h:Lcom/sunia/HTREnginev2/kgk;

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->i:Ljava/lang/Class;

    iget-boolean v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    iget-object v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/FieldInfo;->h(ILcom/google/protobuf/FieldType;Lcom/sunia/HTREnginev2/kgk;Ljava/lang/Class;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object p0, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static {v1, v2, v0, p0}, Lcom/google/protobuf/FieldInfo;->g(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->d:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->e:I

    iget-boolean v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    iget-object v6, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/FieldInfo;->f(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget v4, p0, Lcom/google/protobuf/FieldInfo$Builder;->e:I

    iget-boolean v5, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    iget-object v6, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/FieldInfo;->c(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->l:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object p0, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    invoke-static {v1, v2, p0, v0}, Lcom/google/protobuf/FieldInfo;->e(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v3, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object p0, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    invoke-static {v2, v3, p0, v0, v1}, Lcom/google/protobuf/FieldInfo;->j(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->l:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    iget-boolean p0, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    invoke-static {v0, v1, v2, p0}, Lcom/google/protobuf/FieldInfo;->d(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Z)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    iget-object p0, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    invoke-static {v1, v2, p0, v0}, Lcom/google/protobuf/FieldInfo;->i(Ljava/lang/reflect/Field;ILcom/google/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo;

    move-result-object p0

    return-object p0
.end method

.method public withCachedSizeField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cachedSizeField"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->l:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public withEnforceUtf8(Z)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enforceUtf8"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->g:Z

    return-object p0
.end method

.method public withEnumVerifier(Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumVerifier"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->k:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public withField(Ljava/lang/reflect/Field;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->h:Lcom/sunia/HTREnginev2/kgk;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set field when building a oneof."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withFieldNumber(I)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->c:I

    return-object p0
.end method

.method public withMapDefaultEntry(Ljava/lang/Object;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapDefaultEntry"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public withOneof(Lcom/sunia/HTREnginev2/kgk;Ljava/lang/Class;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oneof",
            "oneofStoredType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/kgk;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/FieldInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/FieldInfo$Builder;->d:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->h:Lcom/sunia/HTREnginev2/kgk;

    iput-object p2, p0, Lcom/google/protobuf/FieldInfo$Builder;->i:Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withPresence(Ljava/lang/reflect/Field;I)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "presenceField",
            "presenceMask"
        }
    .end annotation

    const-string v0, "presenceField"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->d:Ljava/lang/reflect/Field;

    iput p2, p0, Lcom/google/protobuf/FieldInfo$Builder;->e:I

    return-object p0
.end method

.method public withRequired(Z)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "required"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->f:Z

    return-object p0
.end method

.method public withType(Lcom/google/protobuf/FieldType;)Lcom/google/protobuf/FieldInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/FieldInfo$Builder;->b:Lcom/google/protobuf/FieldType;

    return-object p0
.end method
