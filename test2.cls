//<apex:page controller="SOQLController" >
//<apex:form>
//<apex:outputText value="Enter Name" />
//<apex:inputText value="{!name}" />
//<apex:commandButton value="Query" action="{!query}“ />
//</apex:form>
//</apex:page>

public class SOQLController {
    public String name {
        get { return name;}
        set { name = value;}
    }

    public PageReference query_bad() {
        String qryString = 'SELECT Id FROM Contact WHERE ' +
            '(IsDeleted = false and Name like \'%' + name + '%\')';
        queryResult = Database.query(qryString);
        return null;
    }

    public PageReference query_bad() {
        String qryString = 'SELECT Id FROM Contact WHERE ' +
            '(IsDeleted = false and Name like \'%' + escapeSingleQuotes(name) + '%\')';
        queryResult = Database.query(qryString);
        return null;
    }
}
