package com.sun.org.apache.xalan.internal.xsltc.runtime;

import java.util.ListResourceBundle;

/* loaded from: classes10.dex */
public class ErrorMessages_fr extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{BasisLibrary.RUN_TIME_INTERNAL_ERR, "Erreur interne d''exécution dans ''{0}''"}, new Object[]{BasisLibrary.RUN_TIME_COPY_ERR, "Erreur d'exécution de <xsl:copy>."}, new Object[]{"DATA_CONVERSION_ERR", "Conversion incorrecte de ''{0}'' en ''{1}''."}, new Object[]{BasisLibrary.EXTERNAL_FUNC_ERR, "Fonction externe ''{0}'' non prise en charge par XSLTC."}, new Object[]{BasisLibrary.EQUALITY_EXPR_ERR, "Type d'argument inconnu dans l'expression d'égalité."}, new Object[]{BasisLibrary.INVALID_ARGUMENT_ERR, "Type d''argument inconnu ''{0}'' dans l''appel à ''{1}''"}, new Object[]{BasisLibrary.FORMAT_NUMBER_ERR, "Tentative de formatage du nombre ''{0}'' avec le modèle ''{1}''."}, new Object[]{BasisLibrary.ITERATOR_CLONE_ERR, "Clonage impossible de l''itérateur ''{0}''."}, new Object[]{BasisLibrary.AXIS_SUPPORT_ERR, "Itérateur non pris en charge pour l''axe ''{0}''."}, new Object[]{BasisLibrary.TYPED_AXIS_SUPPORT_ERR, "Itérateur non pris en charge pour l''axe indiqué ''{0}''."}, new Object[]{"STRAY_ATTRIBUTE_ERR", "L''attribut ''{0}'' est à l''extérieur de l''élément."}, new Object[]{BasisLibrary.STRAY_NAMESPACE_ERR, "La déclaration d''espace de noms ''{0}''=''{1}'' est à l''extérieur de l''élément."}, new Object[]{BasisLibrary.NAMESPACE_PREFIX_ERR, "L''espace de noms du préfixe ''{0}'' n''a pas été déclaré."}, new Object[]{BasisLibrary.DOM_ADAPTER_INIT_ERR, "DOMAdapter a été créé avec un type incorrect de source de DOM."}, new Object[]{BasisLibrary.PARSER_DTD_SUPPORT_ERR, "L''analyseur SAX que vous utilisez ne traite pas les événements de déclaration DTD."}, new Object[]{BasisLibrary.NAMESPACES_SUPPORT_ERR, "L'analyseur SAX que vous utilisez ne prend pas en charge les espaces de nom XML."}, new Object[]{BasisLibrary.CANT_RESOLVE_RELATIVE_URI_ERR, "Résolution impossible de la référence à l''URI ''{0}''."}};
    }
}
