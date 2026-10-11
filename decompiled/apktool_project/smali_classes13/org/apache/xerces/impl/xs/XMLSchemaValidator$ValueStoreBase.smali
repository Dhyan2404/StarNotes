.class public abstract Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/xs/identity/ValueStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ValueStoreBase"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:S

.field public d:Z

.field public e:I

.field public f:Lorg/apache/xerces/xs/ShortList;

.field protected fFieldCount:I

.field protected fFields:[Lorg/apache/xerces/impl/xs/identity/Field;

.field protected fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

.field public fItemValueTypes:Ljava/util/Vector;

.field protected fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

.field protected fLocalValueTypes:[S

.field protected fLocalValues:[Ljava/lang/Object;

.field public fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

.field public final fValues:Ljava/util/Vector;

.field protected fValuesCount:I

.field public final g:Ljava/lang/StringBuffer;

.field public final synthetic h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/XMLSchemaValidator;Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lorg/apache/xerces/impl/xs/identity/Field;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a:Z

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->b:I

    iput-short p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d:Z

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e:I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->g:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result p2

    iput p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v0, p2, [Lorg/apache/xerces/impl/xs/identity/Field;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lorg/apache/xerces/impl/xs/identity/Field;

    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    new-array v0, p2, [S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    new-array p2, p2, [Lorg/apache/xerces/xs/ShortList;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

    :goto_0
    iget p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lorg/apache/xerces/impl/xs/identity/Field;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lorg/apache/xerces/impl/xs/identity/Field;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/xs/ShortList;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e:I

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    :cond_3
    :goto_1
    iget v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e:I

    if-lt v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public addValue(Lorg/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLorg/apache/xerces/xs/ShortList;)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lorg/apache/xerces/impl/xs/identity/Field;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_5

    :goto_1
    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "UnknownField"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "FieldMultipleMatch"

    invoke-virtual {v1, p2, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    :goto_2
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object p3, p1, v0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short p4, p1, v0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

    aput-object p5, p1, v0

    iget p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->checkDuplicateValues()V

    const/4 p1, 0x0

    :goto_3
    iget p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt p1, p2, :cond_3

    goto :goto_4

    :cond_3
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short p2, p2, p1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->b(S)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a(Lorg/apache/xerces/xs/ShortList;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public append(Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(S)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->b:I

    if-nez v0, :cond_1

    iput-short p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    goto :goto_2

    :cond_1
    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    :cond_2
    :goto_1
    iget v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->b:I

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget-short v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final c(I)Lorg/apache/xerces/xs/ShortList;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/ShortList;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    return-object p0
.end method

.method public checkDuplicateValues()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a:Z

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->b:I

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d:Z

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->clear()V

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    return-void
.end method

.method public contains(Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    iget v4, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v5, 0x1

    const/16 v6, 0x2b

    const/16 v7, 0x2c

    if-gt v4, v5, :cond_5

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v1, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f(S)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    invoke-virtual {v1, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c(I)Lorg/apache/xerces/xs/ShortList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->e(Lorg/apache/xerces/xs/ShortList;)Z

    move-result v4

    if-nez v4, :cond_3

    return v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v8

    :cond_5
    iget-object v4, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v3, :cond_6

    :goto_3
    const/4 v0, -0x1

    return v0

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-lt v9, v4, :cond_7

    return v5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    iget v11, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v10, v11, :cond_8

    add-int/2addr v5, v11

    goto :goto_2

    :cond_8
    add-int v11, v5, v10

    invoke-virtual {v2, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    add-int v14, v9, v10

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d(I)S

    move-result v15

    invoke-virtual {v0, v14}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d(I)S

    move-result v8

    if-eq v12, v13, :cond_9

    if-ne v15, v8, :cond_c

    if-eqz v12, :cond_c

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    if-eq v15, v7, :cond_a

    if-ne v15, v6, :cond_b

    :cond_a
    invoke-virtual {v1, v11}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c(I)Lorg/apache/xerces/xs/ShortList;

    move-result-object v8

    invoke-virtual {v0, v14}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c(I)Lorg/apache/xerces/xs/ShortList;

    move-result-object v11

    if-eqz v8, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    iget v8, v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v9, v8

    goto :goto_4
.end method

.method public contains()Z
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget v3, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v3, v2

    move v4, v1

    :goto_1
    iget v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v4, v5, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v7, v7, v4

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d(I)S

    move-result v8

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-ne v7, v8, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x2c

    if-eq v7, v5, :cond_3

    const/16 v5, 0x2b

    if-ne v7, v5, :cond_4

    :cond_3
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

    aget-object v5, v5, v4

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c(I)Lorg/apache/xerces/xs/ShortList;

    move-result-object v6

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v2, v3

    goto :goto_0
.end method

.method public final d(I)S
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->valueAt(I)S

    move-result p0

    return p0

    :cond_0
    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    return p0
.end method

.method public final e(Lorg/apache/xerces/xs/ShortList;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->f:Lorg/apache/xerces/xs/ShortList;

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endDocumentFragment()V
    .locals 0

    return-void
.end method

.method public endValueScope()V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AbsentKeyValue"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/identity/UniqueOrKey;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyNotEnoughValues"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final f(S)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->contains(S)Z

    move-result p0

    return p0

    :cond_0
    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->c:S

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->Q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startValueScope()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short v0, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lorg/apache/xerces/xs/ShortList;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lorg/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/util/Vector;II)Ljava/lang/String;
    .locals 2

    .line 2
    if-nez p3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p3, p0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-lez v0, :cond_3

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->g:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->g:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v2, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->g:Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->g:Ljava/lang/StringBuffer;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
