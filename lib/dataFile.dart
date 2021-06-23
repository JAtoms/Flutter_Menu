class CardTemplate{
  String _currentBalance, _bankName, _cardNumber, _holderName, _expiryDate;


  CardTemplate(this._currentBalance, this._bankName, this._cardNumber,
      this._holderName, this._expiryDate);

  get expiryDate => _expiryDate;

  get holderName => _holderName;

  get cardNumber => _cardNumber;

  get bankName => _bankName;

  String get currentBalance => _currentBalance;
}
