package org.apache.poi.hwpf.usermodel;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.hwpf.model.FieldsDocumentPart;
import org.apache.poi.hwpf.model.FieldsTables;
import org.apache.poi.hwpf.model.PlexOfField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class FieldsImpl implements Fields {
    private PlexOfFieldComparator comparator = new PlexOfFieldComparator();
    private Map<FieldsDocumentPart, Map<Integer, FieldImpl>> _fieldsByOffset = new HashMap(FieldsDocumentPart.values().length);

    /* loaded from: classes12.dex */
    public static final class PlexOfFieldComparator implements Comparator<PlexOfField>, Serializable {
        private PlexOfFieldComparator() {
        }

        @Override // java.util.Comparator
        public int compare(PlexOfField plexOfField, PlexOfField plexOfField2) {
            return Integer.compare(plexOfField.getFcStart(), plexOfField2.getFcStart());
        }
    }

    public FieldsImpl(FieldsTables fieldsTables) {
        for (FieldsDocumentPart fieldsDocumentPart : FieldsDocumentPart.values()) {
            this._fieldsByOffset.put(fieldsDocumentPart, parseFieldStructure(fieldsTables.getFieldsPLCF(fieldsDocumentPart)));
        }
    }

    private static int binarySearch(List<PlexOfField> list, int i, int i2, int i3) {
        int i4;
        checkIndexForBinarySearch(list.size(), i, i2);
        int i5 = i2 - 1;
        int i6 = -1;
        int i7 = i;
        while (i7 <= i5) {
            i6 = (i7 + i5) >>> 1;
            int fcStart = list.get(i6).getFcStart();
            if (fcStart == i3) {
                return i6;
            }
            if (fcStart < i3) {
                i7 = i6 + 1;
            } else {
                i5 = i6 - 1;
            }
        }
        if (i6 < 0) {
            int i8 = i2;
            while (i < i2) {
                if (i3 < list.get(i).getFcStart()) {
                    i8 = i;
                }
                i++;
            }
            i4 = -i8;
        } else {
            i4 = -i6;
        }
        return i4 - 1;
    }

    private static void checkIndexForBinarySearch(int i, int i2, int i3) {
        if (i2 > i3) {
            throw new IllegalArgumentException();
        }
        if (i < i3 || i2 < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    private Map<Integer, FieldImpl> parseFieldStructure(List<PlexOfField> list) {
        if (list == null || list.isEmpty()) {
            return new HashMap();
        }
        list.sort(this.comparator);
        ArrayList arrayList = new ArrayList((list.size() / 3) + 1);
        parseFieldStructureImpl(list, 0, list.size(), arrayList);
        HashMap hashMap = new HashMap(arrayList.size());
        for (FieldImpl fieldImpl : arrayList) {
            hashMap.put(Integer.valueOf(fieldImpl.getFieldStartOffset()), fieldImpl);
        }
        return hashMap;
    }

    private void parseFieldStructureImpl(List<PlexOfField> list, int i, int i2, List<FieldImpl> list2) {
        while (i < i2) {
            PlexOfField plexOfField = list.get(i);
            if (plexOfField.getFld().getBoundaryType() != 19) {
                i++;
            } else {
                i++;
                int binarySearch = binarySearch(list, i, i2, plexOfField.getFcEnd());
                if (binarySearch >= 0) {
                    PlexOfField plexOfField2 = list.get(binarySearch);
                    int boundaryType = plexOfField2.getFld().getBoundaryType();
                    if (boundaryType == 20) {
                        int binarySearch2 = binarySearch(list, binarySearch, i2, plexOfField2.getFcEnd());
                        if (binarySearch2 >= 0) {
                            PlexOfField plexOfField3 = list.get(binarySearch2);
                            if (plexOfField3.getFld().getBoundaryType() == 21) {
                                list2.add(new FieldImpl(plexOfField, plexOfField2, plexOfField3));
                                if (plexOfField.getFcStart() + 1 < plexOfField2.getFcStart() - 1) {
                                    parseFieldStructureImpl(list, i, binarySearch, list2);
                                }
                                if (plexOfField2.getFcStart() + 1 < plexOfField3.getFcStart() - 1) {
                                    parseFieldStructureImpl(list, binarySearch + 1, binarySearch2, list2);
                                }
                                i = binarySearch2 + 1;
                            }
                        }
                    } else if (boundaryType == 21) {
                        list2.add(new FieldImpl(plexOfField, null, plexOfField2));
                        if (plexOfField.getFcStart() + 1 < plexOfField2.getFcStart() - 1) {
                            parseFieldStructureImpl(list, i, binarySearch, list2);
                        }
                        i = binarySearch + 1;
                    }
                }
            }
        }
    }

    @Override // org.apache.poi.hwpf.usermodel.Fields
    public Collection<Field> getFields(FieldsDocumentPart fieldsDocumentPart) {
        Map<Integer, FieldImpl> map = this._fieldsByOffset.get(fieldsDocumentPart);
        return (map == null || map.isEmpty()) ? Collections.emptySet() : Collections.unmodifiableCollection(map.values());
    }

    @Override // org.apache.poi.hwpf.usermodel.Fields
    public FieldImpl getFieldByStartOffset(FieldsDocumentPart fieldsDocumentPart, int i) {
        Map<Integer, FieldImpl> map = this._fieldsByOffset.get(fieldsDocumentPart);
        if (map == null || map.isEmpty()) {
            return null;
        }
        return map.get(Integer.valueOf(i));
    }
}
